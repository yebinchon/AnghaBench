#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int MaxConnection; int UseEncrypt; int UseCompress; int HalfConnection; int Timeout; int IsAzureSession; int SessionKey32; int VLanId; int UdpAccelFastDisconnectDetect; int EnableHMacOnBulkOfRUDP; int EnableUdpRecovery; TYPE_5__* Connection; scalar_t__ EnableBulkOnRUDP; TYPE_2__* UdpAccel; TYPE_1__* Hub; int /*<<< orphan*/  IpcMacAddress; scalar_t__ InProcMode; scalar_t__ NoSendSignature; int /*<<< orphan*/  UdpSendKey; int /*<<< orphan*/  UdpRecvKey; int /*<<< orphan*/  Policy; int /*<<< orphan*/  SessionKey; scalar_t__ QoS; int /*<<< orphan*/  Name; } ;
struct TYPE_14__ {int /*<<< orphan*/  Reverse_MyServerGlobalIp; TYPE_4__* BulkSendKey; TYPE_3__* BulkRecvKey; } ;
struct TYPE_13__ {scalar_t__ Protocol; TYPE_6__* FirstSock; int /*<<< orphan*/  Name; } ;
struct TYPE_12__ {int /*<<< orphan*/  Data; } ;
struct TYPE_11__ {int /*<<< orphan*/  Data; } ;
struct TYPE_10__ {int MyPort; int MyCookie; int YourCookie; int UseHMac; int /*<<< orphan*/  PlainTextMode; int /*<<< orphan*/  MyKey; int /*<<< orphan*/  MyIp; } ;
struct TYPE_9__ {int /*<<< orphan*/  Name; } ;
typedef  TYPE_6__ SOCK ;
typedef  TYPE_7__ SESSION ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 scalar_t__ CONNECTION_UDP ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int SHA1_SIZE ; 
 int UDP_ACCELERATION_COMMON_KEY_SIZE ; 

PACK *FUNC8(SESSION *s)
{
	PACK *p;
	// Validate arguments
	if (s == NULL)
	{
		return NULL;
	}

	p = FUNC0();

	// Session name
	FUNC6(p, "session_name", s->Name);

	// Connection name
	FUNC6(p, "connection_name", s->Connection->Name);

	// Parameters
	FUNC3(p, "max_connection", s->MaxConnection);
	FUNC3(p, "use_encrypt", s->UseEncrypt == false ? 0 : 1);
	FUNC3(p, "use_compress", s->UseCompress == false ? 0 : 1);
	FUNC3(p, "half_connection", s->HalfConnection == false ? 0 : 1);
	FUNC3(p, "timeout", s->Timeout);
	FUNC3(p, "qos", s->QoS ? 1 : 0);
	FUNC3(p, "is_azure_session", s->IsAzureSession);

	// Session key
	FUNC2(p, "session_key", s->SessionKey, SHA1_SIZE);
	FUNC3(p, "session_key_32", s->SessionKey32);

	// Policy
	FUNC5(p, s->Policy);

	// VLAN ID
	FUNC3(p, "vlan_id", s->VLanId);

	if (s->Connection->Protocol == CONNECTION_UDP)
	{
		// In the case of UDP protocol, generate 2 pairs of key
		FUNC7(s->UdpSendKey, sizeof(s->UdpSendKey));
		FUNC7(s->UdpRecvKey, sizeof(s->UdpRecvKey));

		// Send to client by exchanging 2 keys
		FUNC2(p, "udp_send_key", s->UdpRecvKey, sizeof(s->UdpRecvKey));
		FUNC2(p, "udp_recv_key", s->UdpSendKey, sizeof(s->UdpSendKey));
	}

	// no_send_signature
	if (s->NoSendSignature)
	{
		FUNC1(p, "no_send_signature", true);
	}

	if (s->InProcMode)
	{
		// MAC address for IPC
		FUNC2(p, "IpcMacAddress", s->IpcMacAddress, 6);

		// Virtual HUB name
		FUNC6(p, "IpcHubName", s->Hub->Name);
	}

	if (s->UdpAccel != NULL)
	{
		// UDP acceleration function
		FUNC1(p, "use_udp_acceleration", true);
		FUNC4(p, "udp_acceleration_server_ip", &s->UdpAccel->MyIp);
		FUNC3(p, "udp_acceleration_server_port", s->UdpAccel->MyPort);
		FUNC2(p, "udp_acceleration_server_key", s->UdpAccel->MyKey, UDP_ACCELERATION_COMMON_KEY_SIZE);
		FUNC3(p, "udp_acceleration_server_cookie", s->UdpAccel->MyCookie);
		FUNC3(p, "udp_acceleration_client_cookie", s->UdpAccel->YourCookie);
		FUNC1(p, "udp_acceleration_use_encryption", !s->UdpAccel->PlainTextMode);
		FUNC1(p, "use_hmac_on_udp_acceleration", s->UdpAccel->UseHMac);
		FUNC1(p, "udp_accel_fast_disconnect_detect", s->UdpAccelFastDisconnectDetect);
	}

	if (s->EnableBulkOnRUDP)
	{
		// Allow bulk transfer on R-UDP
		FUNC1(p, "enable_bulk_on_rudp", true);
		FUNC1(p, "enable_hmac_on_bulk_of_rudp", s->EnableHMacOnBulkOfRUDP);

		FUNC2(p, "bulk_on_rudp_send_key", s->Connection->FirstSock->BulkRecvKey->Data, SHA1_SIZE);
		FUNC2(p, "bulk_on_rudp_recv_key", s->Connection->FirstSock->BulkSendKey->Data, SHA1_SIZE);
	}

	if (s->IsAzureSession)
	{
		if (s->Connection != NULL && s->Connection->FirstSock != NULL)
		{
			SOCK *sock = s->Connection->FirstSock;

			FUNC4(p, "azure_real_server_global_ip", &sock->Reverse_MyServerGlobalIp);
		}
	}

	FUNC1(p, "enable_udp_recovery", s->EnableUdpRecovery);

	return p;
}