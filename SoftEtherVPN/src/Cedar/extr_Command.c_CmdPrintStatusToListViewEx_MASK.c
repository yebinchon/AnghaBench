#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  vv ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  str ;
typedef  int UINT64 ;
typedef  char* UINT ;
struct TYPE_7__ {int UnicastCount; int UnicastBytes; int BroadcastCount; int BroadcastBytes; } ;
struct TYPE_6__ {int UnicastCount; int UnicastBytes; int BroadcastCount; int BroadcastBytes; } ;
struct TYPE_8__ {TYPE_2__ Recv; TYPE_1__ Send; } ;
struct TYPE_9__ {char* AccountName; int Connected; int SessionStatus; char* ServerName; char* ServerPort; char* ServerProductName; int ServerProductVer; char* ServerProductBuild; scalar_t__ StartTime; scalar_t__ FirstConnectionEstablisiedTime; scalar_t__ CurrentConnectionEstablishTime; char* NumConnectionsEstablished; char* NumTcpConnections; char* NumTcpConnectionsUpload; char* NumTcpConnectionsDownload; char* MaxTcpConnections; int UseEncrypt; char* CipherName; int TotalRecvSize; int TotalSendSize; char* UnderlayProtocol; char* SessionName; char* ConnectionName; TYPE_3__ Traffic; scalar_t__ IsMonitorMode; scalar_t__ IsBridgeMode; int /*<<< orphan*/  SessionKey; scalar_t__ IsUsingUdpAcceleration; scalar_t__ IsUdpAccelerationEnabled; scalar_t__ TotalSendSizeReal; scalar_t__ TotalRecvSizeReal; scalar_t__ UseCompress; scalar_t__ HalfConnection; scalar_t__ QoS; int /*<<< orphan*/  VLanId; } ;
typedef  TYPE_4__ RPC_CLIENT_GET_CONNECTION_STATUS ;
typedef  int /*<<< orphan*/  CT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int) ; 
#define  CLIENT_STATUS_AUTH 133 
#define  CLIENT_STATUS_CONNECTING 132 
#define  CLIENT_STATUS_ESTABLISHED 131 
#define  CLIENT_STATUS_IDLE 130 
#define  CLIENT_STATUS_NEGOTIATION 129 
#define  CLIENT_STATUS_RETRY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,...) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC13 (char*) ; 

void FUNC14(CT *ct, RPC_CLIENT_GET_CONNECTION_STATUS *s, bool server_mode)
{
	wchar_t tmp[MAX_SIZE];
	char str[MAX_SIZE];
	char vv[128];
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	if (server_mode == false)
	{
		FUNC1(ct, FUNC13("CM_ST_ACCOUNT_NAME"), s->AccountName);

		if (s->Connected == false)
		{
			wchar_t *st = FUNC13("CM_ST_CONNECTED_FALSE");
			switch (s->SessionStatus)
			{
			case CLIENT_STATUS_CONNECTING:
				st = FUNC13("CM_ST_CONNECTING");
				break;
			case CLIENT_STATUS_NEGOTIATION:
				st = FUNC13("CM_ST_NEGOTIATION");
				break;
			case CLIENT_STATUS_AUTH:
				st = FUNC13("CM_ST_AUTH");
				break;
			case CLIENT_STATUS_ESTABLISHED:
				st = FUNC13("CM_ST_ESTABLISHED");
				break;
			case CLIENT_STATUS_RETRY:
				st = FUNC13("CM_ST_RETRY");
				break;
			case CLIENT_STATUS_IDLE:
				st = FUNC13("CM_ST_IDLE");
				break;
			}
			FUNC1(ct, FUNC13("CM_ST_CONNECTED"), st);
		}
		else
		{
			FUNC1(ct, FUNC13("CM_ST_CONNECTED"), FUNC13("CM_ST_CONNECTED_TRUE"));
		}
	}

	if (s->Connected)
	{
		if (s->VLanId == 0)
		{
			FUNC11(tmp, sizeof(tmp), FUNC13("CM_ST_NO_VLAN"));
		}
		else
		{
			FUNC12(tmp, s->VLanId);
		}

		FUNC1(ct, FUNC13("CM_ST_VLAN_ID"), tmp);

		if (server_mode == false)
		{
			FUNC6(tmp, sizeof(tmp), s->ServerName);
			FUNC1(ct, FUNC13("CM_ST_SERVER_NAME"), tmp);

			FUNC9(tmp, sizeof(tmp), FUNC13("CM_ST_PORT_TCP"), s->ServerPort);
			FUNC1(ct, FUNC13("CM_ST_SERVER_PORT"), tmp);
		}

		FUNC6(tmp, sizeof(tmp), s->ServerProductName);
		FUNC1(ct, FUNC13("CM_ST_SERVER_P_NAME"), tmp);

		FUNC9(tmp, sizeof(tmp), L"%u.%02u", s->ServerProductVer / 100, s->ServerProductVer % 100);
		FUNC1(ct, FUNC13("CM_ST_SERVER_P_VER"), tmp);
		FUNC9(tmp, sizeof(tmp), L"Build %u", s->ServerProductBuild);
		FUNC1(ct, FUNC13("CM_ST_SERVER_P_BUILD"), tmp);
	}

	FUNC2(tmp, sizeof(tmp), FUNC7(s->StartTime), NULL);
	FUNC1(ct, FUNC13("CM_ST_START_TIME"), tmp);
	/* !!! Do not correct the spelling to keep the backward protocol compatibility !!!  */
	FUNC2(tmp, sizeof(tmp), FUNC7(s->FirstConnectionEstablisiedTime), NULL);
	/* !!! Do not correct the spelling to keep the backward protocol compatibility !!!  */
	FUNC1(ct, FUNC13("CM_ST_FIRST_ESTAB_TIME"), s->FirstConnectionEstablisiedTime == 0 ? FUNC13("CM_ST_NONE") : tmp);

	if (s->Connected)
	{
		FUNC2(tmp, sizeof(tmp), FUNC7(s->CurrentConnectionEstablishTime), NULL);
		FUNC1(ct, FUNC13("CM_ST_CURR_ESTAB_TIME"), tmp);
	}

	if (server_mode == false)
	{
		FUNC9(tmp, sizeof(tmp), FUNC13("CM_ST_NUM_STR"), s->NumConnectionsEstablished);
		FUNC1(ct, FUNC13("CM_ST_NUM_ESTABLISHED"), tmp);
	}

	if (s->Connected)
	{
		FUNC1(ct, FUNC13("CM_ST_HALF_CONNECTION"), s->HalfConnection ? FUNC13("CM_ST_HALF_TRUE") : FUNC13("CM_ST_HALF_FALSE"));

		FUNC1(ct, FUNC13("CM_ST_QOS"), s->QoS ? FUNC13("CM_ST_QOS_TRUE") : FUNC13("CM_ST_QOS_FALSE"));

		FUNC9(tmp, sizeof(tmp), L"%u", s->NumTcpConnections);
		FUNC1(ct, FUNC13("CM_ST_NUM_TCP"), tmp);

		if (s->HalfConnection)
		{
			FUNC9(tmp, sizeof(tmp), L"%u", s->NumTcpConnectionsUpload);
			FUNC1(ct, FUNC13("CM_ST_NUM_TCP_UPLOAD"), tmp);
			FUNC9(tmp, sizeof(tmp), L"%u", s->NumTcpConnectionsDownload);
			FUNC1(ct, FUNC13("CM_ST_NUM_TCP_DOWNLOAD"), tmp);
		}

		FUNC9(tmp, sizeof(tmp), L"%u", s->MaxTcpConnections);
		FUNC1(ct, FUNC13("CM_ST_MAX_TCP"), tmp);

		if (s->UseEncrypt == false)
		{
			FUNC11(tmp, sizeof(tmp), FUNC13("CM_ST_USE_ENCRYPT_FALSE"));
		}
		else
		{
			if (FUNC5(s->CipherName) != 0)
			{
				FUNC9(tmp, sizeof(tmp), FUNC13("CM_ST_USE_ENCRYPT_TRUE"), s->CipherName);
			}
			else
			{
				FUNC9(tmp, sizeof(tmp), FUNC13("CM_ST_USE_ENCRYPT_TRUE2"));
			}
		}
		FUNC1(ct, FUNC13("CM_ST_USE_ENCRYPT"), tmp);

		if (s->UseCompress)
		{
			UINT percent = 0;
			if ((s->TotalRecvSize + s->TotalSendSize) > 0)
			{
				percent = (UINT)((UINT64)100 - (UINT64)(s->TotalRecvSizeReal + s->TotalSendSizeReal) * (UINT64)100 /
					(s->TotalRecvSize + s->TotalSendSize));
				percent = FUNC4(percent, 0, 100);
			}

			FUNC9(tmp, sizeof(tmp), FUNC13("CM_ST_COMPRESS_TRUE"), percent);
		}
		else
		{
			FUNC11(tmp, sizeof(tmp), FUNC13("CM_ST_COMPRESS_FALSE"));
		}
		FUNC1(ct, FUNC13("CM_ST_USE_COMPRESS"), tmp);

		if (FUNC3(s->UnderlayProtocol) == false)
		{
			FUNC6(tmp, sizeof(tmp), s->UnderlayProtocol);
			FUNC1(ct, FUNC13("CM_ST_UNDERLAY_PROTOCOL"), tmp);
		}

		FUNC1(ct, FUNC13("CM_ST_UDP_ACCEL_ENABLED"), (s->IsUdpAccelerationEnabled ? FUNC13("CM_ST_YES") : FUNC13("CM_ST_NO")));
		FUNC1(ct, FUNC13("CM_ST_UDP_ACCEL_USING"), (s->IsUsingUdpAcceleration ? FUNC13("CM_ST_YES") : FUNC13("CM_ST_NO")));

		FUNC6(tmp, sizeof(tmp), s->SessionName);
		FUNC1(ct, FUNC13("CM_ST_SESSION_NAME"), tmp);

		FUNC6(tmp, sizeof(tmp), s->ConnectionName);
		if (FUNC10(tmp, L"INITING") != 0)
		{
			FUNC1(ct, FUNC13("CM_ST_CONNECTION_NAME"), tmp);
		}

		FUNC0(str, sizeof(str), s->SessionKey, sizeof(s->SessionKey));
		FUNC6(tmp, sizeof(tmp), str);
		FUNC1(ct, FUNC13("CM_ST_SESSION_KEY"), tmp);

		FUNC1(ct, FUNC13("CM_ST_BRIDGE_MODE"), s->IsBridgeMode ? FUNC13("CM_ST_YES") : FUNC13("CM_ST_NO"));

		FUNC1(ct, FUNC13("CM_ST_MONITOR_MODE"), s->IsMonitorMode ? FUNC13("CM_ST_YES") : FUNC13("CM_ST_NO"));

		FUNC8(vv, sizeof(vv), s->TotalSendSize);
		FUNC9(tmp, sizeof(tmp), FUNC13("CM_ST_SIZE_BYTE_STR"), vv);
		FUNC1(ct, FUNC13("CM_ST_SEND_SIZE"), tmp);

		FUNC8(vv, sizeof(vv), s->TotalRecvSize);
		FUNC9(tmp, sizeof(tmp), FUNC13("CM_ST_SIZE_BYTE_STR"), vv);
		FUNC1(ct, FUNC13("CM_ST_RECV_SIZE"), tmp);

		FUNC8(vv, sizeof(vv), s->Traffic.Send.UnicastCount);
		FUNC9(tmp, sizeof(tmp), FUNC13("CM_ST_NUM_PACKET_STR"), vv);
		FUNC1(ct, FUNC13("CM_ST_SEND_UCAST_NUM"), tmp);

		FUNC8(vv, sizeof(vv), s->Traffic.Send.UnicastBytes);
		FUNC9(tmp, sizeof(tmp), FUNC13("CM_ST_SIZE_BYTE_STR"), vv);
		FUNC1(ct, FUNC13("CM_ST_SEND_UCAST_SIZE"), tmp);

		FUNC8(vv, sizeof(vv), s->Traffic.Send.BroadcastCount);
		FUNC9(tmp, sizeof(tmp), FUNC13("CM_ST_NUM_PACKET_STR"), vv);
		FUNC1(ct, FUNC13("CM_ST_SEND_BCAST_NUM"), tmp);

		FUNC8(vv, sizeof(vv), s->Traffic.Send.BroadcastBytes);
		FUNC9(tmp, sizeof(tmp), FUNC13("CM_ST_SIZE_BYTE_STR"), vv);
		FUNC1(ct, FUNC13("CM_ST_SEND_BCAST_SIZE"), tmp);

		FUNC8(vv, sizeof(vv), s->Traffic.Recv.UnicastCount);
		FUNC9(tmp, sizeof(tmp), FUNC13("CM_ST_NUM_PACKET_STR"), vv);
		FUNC1(ct, FUNC13("CM_ST_RECV_UCAST_NUM"), tmp);

		FUNC8(vv, sizeof(vv), s->Traffic.Recv.UnicastBytes);
		FUNC9(tmp, sizeof(tmp), FUNC13("CM_ST_SIZE_BYTE_STR"), vv);
		FUNC1(ct, FUNC13("CM_ST_RECV_UCAST_SIZE"), tmp);

		FUNC8(vv, sizeof(vv), s->Traffic.Recv.BroadcastCount);
		FUNC9(tmp, sizeof(tmp), FUNC13("CM_ST_NUM_PACKET_STR"), vv);
		FUNC1(ct, FUNC13("CM_ST_RECV_BCAST_NUM"), tmp);

		FUNC8(vv, sizeof(vv), s->Traffic.Recv.BroadcastBytes);
		FUNC9(tmp, sizeof(tmp), FUNC13("CM_ST_SIZE_BYTE_STR"), vv);
		FUNC1(ct, FUNC13("CM_ST_RECV_BCAST_SIZE"), tmp);
	}
}