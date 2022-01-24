#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int Active; int Connected; int HalfConnection; int QoS; int UseEncrypt; int UseCompress; int IsRUDPSession; int IsUdpAccelerationEnabled; int IsUsingUdpAcceleration; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  Policy; void* ClientX; void* ServerX; void* VLanId; void* IsMonitorMode; void* IsBridgeMode; int /*<<< orphan*/  UnderlayProtocol; void* TotalRecvSizeReal; void* TotalSendSizeReal; void* TotalRecvSize; void* TotalSendSize; void* CurrentConnectionEstablishTime; void* FirstConnectionEstablisiedTime; void* StartTime; void* NumTcpConnectionsDownload; void* NumTcpConnectionsUpload; void* NumTcpConnections; void* MaxTcpConnections; void* NumConnectionsEstablished; void* ServerProductBuild; void* ServerProductVer; void* ServerPort; void* SessionStatus; int /*<<< orphan*/  SessionKey; int /*<<< orphan*/  ConnectionName; int /*<<< orphan*/  SessionName; int /*<<< orphan*/  CipherName; int /*<<< orphan*/  ServerProductName; int /*<<< orphan*/  ServerName; int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__ RPC_CLIENT_GET_CONNECTION_STATUS ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 

void FUNC13(RPC_CLIENT_GET_CONNECTION_STATUS *s, PACK *p)
{
	BUF *b;
	// Validate arguments
	if (s == NULL || p == NULL)
	{
		return;
	}

	FUNC12(s, sizeof(RPC_CLIENT_GET_CONNECTION_STATUS));

	FUNC11(p, "AccountName", s->AccountName, sizeof(s->AccountName));

	FUNC10(p, "ServerName", s->ServerName, sizeof(s->ServerName));
	FUNC10(p, "ServerProductName", s->ServerProductName, sizeof(s->ServerProductName));
	FUNC10(p, "CipherName", s->CipherName, sizeof(s->CipherName));
	FUNC10(p, "SessionName", s->SessionName, sizeof(s->SessionName));
	FUNC10(p, "ConnectionName", s->ConnectionName, sizeof(s->ConnectionName));

	if (FUNC7(p, "SessionKey") == SHA1_SIZE)
	{
		FUNC6(p, "SessionKey", s->SessionKey);
	}

	s->SessionStatus = FUNC8(p, "SessionStatus");
	s->ServerPort = FUNC8(p, "ServerPort");
	s->ServerProductVer = FUNC8(p, "ServerProductVer");
	s->ServerProductBuild = FUNC8(p, "ServerProductBuild");
	s->NumConnectionsEstablished = FUNC8(p, "NumConnectionsEstablished");
	s->MaxTcpConnections = FUNC8(p, "MaxTcpConnections");
	s->NumTcpConnections = FUNC8(p, "NumTcpConnections");
	s->NumTcpConnectionsUpload = FUNC8(p, "NumTcpConnectionsUpload");
	s->NumTcpConnectionsDownload = FUNC8(p, "NumTcpConnectionsDownload");

	s->StartTime = FUNC9(p, "StartTime");
	/* !!! Do not correct the spelling to keep the backward protocol compatibility !!!  */
	s->FirstConnectionEstablisiedTime = FUNC9(p, "FirstConnectionEstablisiedTime");
	s->CurrentConnectionEstablishTime = FUNC9(p, "CurrentConnectionEstablishTime");
	s->TotalSendSize = FUNC9(p, "TotalSendSize");
	s->TotalRecvSize = FUNC9(p, "TotalRecvSize");
	s->TotalSendSizeReal = FUNC9(p, "TotalSendSizeReal");
	s->TotalRecvSizeReal = FUNC9(p, "TotalRecvSizeReal");

	s->Active = FUNC8(p, "Active") ? true : false;
	s->Connected = FUNC8(p, "Connected") ? true : false;
	s->HalfConnection = FUNC8(p, "HalfConnection") ? true : false;
	s->QoS = FUNC8(p, "QoS") ? true : false;
	s->UseEncrypt = FUNC8(p, "UseEncrypt") ? true : false;
	s->UseCompress = FUNC8(p, "UseCompress") ? true : false;
	s->IsRUDPSession = FUNC8(p, "IsRUDPSession") ? true : false;
	FUNC10(p, "UnderlayProtocol", s->UnderlayProtocol, sizeof(s->UnderlayProtocol));
	s->IsUdpAccelerationEnabled = FUNC8(p, "IsUdpAccelerationEnabled") ? true : false;
	s->IsUsingUdpAcceleration = FUNC8(p, "IsUsingUdpAcceleration") ? true : false;

	s->IsBridgeMode = FUNC4(p, "IsBridgeMode");
	s->IsMonitorMode = FUNC4(p, "IsMonitorMode");

	s->VLanId = FUNC8(p, "VLanId");

	b = FUNC5(p, "ServerX");
	if (b != NULL)
	{
		s->ServerX = FUNC0(b, false);
		FUNC1(b);
	}

	b = FUNC5(p, "ClientX");
	if (b != NULL)
	{
		s->ClientX = FUNC0(b, false);
		FUNC1(b);
	}

	FUNC2(&s->Policy, p);

	FUNC3(&s->Traffic, p);
}