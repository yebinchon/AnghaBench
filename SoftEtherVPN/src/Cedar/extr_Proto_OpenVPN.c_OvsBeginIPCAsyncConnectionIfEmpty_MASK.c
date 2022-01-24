#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  id ;
struct TYPE_24__ {int IsL3Mode; int BridgeMode; int /*<<< orphan*/  Mss; int /*<<< orphan*/  Layer; int /*<<< orphan*/ * ClientCertificate; int /*<<< orphan*/  ClientHostname; int /*<<< orphan*/  CryptName; int /*<<< orphan*/  ServerPort; int /*<<< orphan*/  ServerIp; int /*<<< orphan*/  ClientPort; int /*<<< orphan*/  ClientIp; int /*<<< orphan*/  Password; int /*<<< orphan*/  HubName; int /*<<< orphan*/  UserName; int /*<<< orphan*/  Postfix; int /*<<< orphan*/  ClientName; } ;
struct TYPE_20__ {int /*<<< orphan*/ * X; } ;
struct TYPE_19__ {int /*<<< orphan*/  Password; int /*<<< orphan*/  Username; int /*<<< orphan*/  PeerInfo; } ;
struct TYPE_23__ {TYPE_3__ ClientCert; TYPE_2__ ClientKey; TYPE_1__* CipherEncrypt; } ;
struct TYPE_22__ {int /*<<< orphan*/  SockEvent; int /*<<< orphan*/  Cedar; } ;
struct TYPE_21__ {scalar_t__ Mode; int /*<<< orphan*/ * IpcAsync; int /*<<< orphan*/  ServerPort; int /*<<< orphan*/  ServerIp; int /*<<< orphan*/  ClientPort; int /*<<< orphan*/  ClientIp; int /*<<< orphan*/ * Ipc; } ;
struct TYPE_18__ {int IsNullCipher; int /*<<< orphan*/  Name; } ;
typedef  TYPE_4__ OPENVPN_SESSION ;
typedef  TYPE_5__ OPENVPN_SERVER ;
typedef  TYPE_6__ OPENVPN_CHANNEL ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_7__ IPC_PARAM ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_7__ ETHERIP_ID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPC_LAYER_2 ; 
 int /*<<< orphan*/  IPC_LAYER_3 ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPENVPN_IPC_CLIENT_NAME ; 
 int /*<<< orphan*/  OPENVPN_IPC_POSTFIX_L2 ; 
 int /*<<< orphan*/  OPENVPN_IPC_POSTFIX_L3 ; 
 scalar_t__ OPENVPN_MODE_L2 ; 
 scalar_t__ OPENVPN_MODE_L3 ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*,int) ; 

void FUNC14(OPENVPN_SERVER *s, OPENVPN_SESSION *se, OPENVPN_CHANNEL *c)
{
	// Validate arguments
	if (s == NULL || se == NULL || c == NULL)
	{
		return;
	}

	if (FUNC7(se->Ipc) == false)
	{
		FUNC5(se->Ipc);

		se->Ipc = NULL;
	}

	if (se->IpcAsync == NULL)
	{
		LIST *pi;
		IPC_PARAM p;
		ETHERIP_ID id;

		FUNC13(&p, sizeof(p));
		FUNC13(&id, sizeof(id));

		// Parse the user name
		FUNC11(s->Cedar, c->ClientKey.Username, &id);


		// Build IPC connection parameters
		FUNC12(p.ClientName, sizeof(p.ClientName), OPENVPN_IPC_CLIENT_NAME);
		FUNC12(p.Postfix, sizeof(p.Postfix), (se->Mode == OPENVPN_MODE_L3 ? OPENVPN_IPC_POSTFIX_L3 : OPENVPN_IPC_POSTFIX_L2));

		FUNC12(p.UserName, sizeof(p.UserName), id.UserName);
		FUNC12(p.HubName, sizeof(p.HubName), id.HubName);
		FUNC12(p.Password, sizeof(p.Password), c->ClientKey.Password);

		FUNC0(&p.ClientIp, &se->ClientIp, sizeof(IP));
		p.ClientPort = se->ClientPort;

		FUNC0(&p.ServerIp, &se->ServerIp, sizeof(IP));
		p.ServerPort = se->ServerPort;

		if (c->CipherEncrypt->IsNullCipher == false)
		{
			FUNC12(p.CryptName, sizeof(p.CryptName), c->CipherEncrypt->Name);
		}

		// OpenVPN sends the default gateway's MAC address,
		// if the option --push-peer-info is enabled.
		// It also sends all of the client's environment
		// variables whose names start with "UV_".
		pi = FUNC8(c->ClientKey.PeerInfo, "\n", "=\t");

		// Check presence of custom hostname
		if (FUNC2(pi, "UV_HOSTNAME"))
		{
			FUNC12(p.ClientHostname, sizeof(p.ClientHostname), FUNC3(pi, "UV_HOSTNAME"));
		}
		else // Use the default gateway's MAC address
		{
			FUNC12(p.ClientHostname, sizeof(p.ClientHostname), FUNC3(pi, "IV_HWADDR"));
		}

		FUNC4(pi);

		if (se->Mode == OPENVPN_MODE_L3)
		{
			// L3 Mode
			p.IsL3Mode = true;
		}
		else
		{
			// L2 Mode
			p.BridgeMode = true;
		}

		if (FUNC6(c->ClientKey.Username) || FUNC6(c->ClientKey.Password))
		{
			// OpenVPN X.509 certificate authentication will be used only when no username / password is specified
			if (c->ClientCert.X != NULL)
			{
				p.ClientCertificate = c->ClientCert.X;
			}
		}

		p.Layer = (se->Mode == OPENVPN_MODE_L2) ? IPC_LAYER_2 : IPC_LAYER_3;

		// Calculate the MSS
		p.Mss = FUNC10(s, se, c);
		FUNC1("MSS=%u\n", p.Mss);

		// Start an IPC connection
		se->IpcAsync = FUNC9(s->Cedar, &p, s->SockEvent);
	}
}