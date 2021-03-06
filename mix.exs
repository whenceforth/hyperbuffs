defmodule HyperBuffs.Mixfile do
  use Mix.Project

  def project do
    [app: :hyperbuffs,
     version: "0.1.0",
     elixir: "~> 1.3",
     description: description(),
     package: package(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger],]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:phoenix, "~> 1.2.1"},
      {:plug_protobufs, "~> 0.1.0"},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:exprotobuf, "~> 1.2"},
      {:poison, ">= 0.0.0"}
    ]
  end

  defp description do
    """ 
    HyperBuffs is an Elixir library which strongly connects Phoenix to Protobuf definitions. Based on content negotiation from incoming requests, your controllers will seamlessly accept and respond in either JSON or Protobuf.
    """ 
  end

  defp package do
    [
      maintainers: ["Geoffrey Hayes", "Fahim Zahur"],
      licenses: ["MIT"], 
      links: %{"GitHub" => "https://github.com/hayesgm/hyperbuffs"}
    ]
  end
end
