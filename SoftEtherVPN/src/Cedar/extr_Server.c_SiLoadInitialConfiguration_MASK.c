#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  k ;
typedef  int /*<<< orphan*/  c ;
struct TYPE_17__ {int Enable; int Server; int ServerPort; int Interval; int /*<<< orphan*/  lock; int /*<<< orphan*/  UdpMode; int /*<<< orphan*/  ServerName; } ;
struct TYPE_16__ {int UseKeepConnect; int KeepConnectPort; int KeepConnectInterval; int EnableOpenVPN; int EnableSSTP; int OpenVPNObfuscation; int /*<<< orphan*/  OpenVPNPortList; int /*<<< orphan*/  KeepConnectProtocol; int /*<<< orphan*/  KeepConnectHost; } ;
struct TYPE_15__ {int BackupConfigOnlyWhenModified; int DisableNatTraversal; int DisableSSTPServer; int DisableOpenVPNServer; int EnableVpnOverIcmp; int EnableVpnOverDns; int /*<<< orphan*/  Logger; int /*<<< orphan*/  Eraser; TYPE_13__* Cedar; int /*<<< orphan*/  DDnsClient; int /*<<< orphan*/  HashedPassword; TYPE_4__* Keep; int /*<<< orphan*/  Weight; int /*<<< orphan*/  AutoSaveConfigSpan; } ;
struct TYPE_14__ {int Bridge; int /*<<< orphan*/  UsernameHubSeparator; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_KEEP ;
typedef  TYPE_2__ OPENVPN_SSTP_CONFIG ;
typedef  TYPE_4__ KEEP ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_DEFAULT_KEEPALIVE_HOST ; 
 int /*<<< orphan*/  CONNECTION_UDP ; 
 int /*<<< orphan*/  DEFAULT_USERNAME_HUB_SEPARATOR ; 
 int /*<<< orphan*/  FARM_DEFAULT_WEIGHT ; 
 int KEEP_INTERVAL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_13__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPENVPN_UDP_PORT ; 
 int /*<<< orphan*/  SERVER_FILE_SAVE_INTERVAL_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 

void FUNC14(SERVER *s)
{
	RPC_KEEP k;
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	// Auto saving interval related
	s->AutoSaveConfigSpan = SERVER_FILE_SAVE_INTERVAL_DEFAULT;
	s->BackupConfigOnlyWhenModified = true;

	s->Weight = FARM_DEFAULT_WEIGHT;

	FUNC8(NULL);

	// KEEP related
	FUNC13(&k, sizeof(k));

	{
		k.UseKeepConnect = true;
	}
	k.KeepConnectPort = 80;
	FUNC10(k.KeepConnectHost, sizeof(k.KeepConnectHost), CLIENT_DEFAULT_KEEPALIVE_HOST);
	k.KeepConnectInterval = KEEP_INTERVAL_DEFAULT * 1000;
	k.KeepConnectProtocol = CONNECTION_UDP;

	FUNC0(s->Keep->lock);
	{
		KEEP *keep = s->Keep;
		keep->Enable = k.UseKeepConnect;
		keep->Server = true;
		FUNC10(keep->ServerName, sizeof(keep->ServerName), k.KeepConnectHost);
		keep->ServerPort = k.KeepConnectPort;
		keep->UdpMode = k.KeepConnectProtocol;
		keep->Interval = k.KeepConnectInterval;
	}
	FUNC12(s->Keep->lock);

	// Initialize the password
	{
		FUNC3(s->HashedPassword, "", 0);
	}

	// Set the encryption algorithm name to default
	FUNC4(s);

	// Set the server certificate to default
	FUNC6(s);

	// Set the character which separates the username from the hub name
	s->Cedar->UsernameHubSeparator = DEFAULT_USERNAME_HUB_SEPARATOR;

	// Create a default HUB
	{
		FUNC5(s);
	}

	if (s->Cedar->Bridge == false)
	{
		// Create a DDNS client
		s->DDnsClient = FUNC1(s->Cedar, NULL, NULL);
	}


	// Set the listener list to default setting
	FUNC7(s);

	if (s->Cedar->Bridge)
	{
		// SSTP, OpenVPN, and NAT traversal function can not be used in the bridge environment
		s->DisableNatTraversal = true;
		s->DisableSSTPServer = true;
		s->DisableOpenVPNServer = true;
	}
	else
	{
		// Enable the SSTP and OpenVPN for default setting
		OPENVPN_SSTP_CONFIG c;

		FUNC13(&c, sizeof(c));
		c.EnableOpenVPN = true;
		c.EnableSSTP = true;

		{
			FUNC11(c.OpenVPNPortList, OPENVPN_UDP_PORT);
		}

		c.OpenVPNObfuscation = false;

		FUNC9(s, &c);

		{
			// Enable VPN-over-ICMP" and VPN-over-DNS for default setting
			s->EnableVpnOverIcmp = false;
			s->EnableVpnOverDns = false;
		}
	}

	s->Eraser = FUNC2(s->Logger, 0);
}