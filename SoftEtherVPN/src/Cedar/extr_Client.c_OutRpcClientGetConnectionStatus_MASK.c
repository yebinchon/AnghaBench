#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * ClientX; int /*<<< orphan*/ * ServerX; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  Policy; int /*<<< orphan*/  VLanId; int /*<<< orphan*/  TotalRecvSizeReal; int /*<<< orphan*/  TotalSendSizeReal; int /*<<< orphan*/  TotalRecvSize; int /*<<< orphan*/  TotalSendSize; int /*<<< orphan*/  CurrentConnectionEstablishTime; int /*<<< orphan*/  FirstConnectionEstablisiedTime; int /*<<< orphan*/  StartTime; int /*<<< orphan*/  IsMonitorMode; int /*<<< orphan*/  IsBridgeMode; int /*<<< orphan*/  IsUsingUdpAcceleration; int /*<<< orphan*/  IsUdpAccelerationEnabled; int /*<<< orphan*/  UnderlayProtocol; int /*<<< orphan*/  IsRUDPSession; int /*<<< orphan*/  UseCompress; int /*<<< orphan*/  UseEncrypt; int /*<<< orphan*/  NumTcpConnectionsDownload; int /*<<< orphan*/  NumTcpConnectionsUpload; int /*<<< orphan*/  NumTcpConnections; int /*<<< orphan*/  MaxTcpConnections; int /*<<< orphan*/  QoS; int /*<<< orphan*/  HalfConnection; int /*<<< orphan*/  NumConnectionsEstablished; int /*<<< orphan*/  ServerProductBuild; int /*<<< orphan*/  ServerProductVer; int /*<<< orphan*/  ServerPort; int /*<<< orphan*/  SessionStatus; int /*<<< orphan*/  Connected; int /*<<< orphan*/  Active; int /*<<< orphan*/  SessionKey; int /*<<< orphan*/  ConnectionName; int /*<<< orphan*/  SessionName; int /*<<< orphan*/  CipherName; int /*<<< orphan*/  ServerProductName; int /*<<< orphan*/  ServerName; int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__ RPC_CLIENT_GET_CONNECTION_STATUS ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int) ; 

void FUNC12(PACK *p, RPC_CLIENT_GET_CONNECTION_STATUS *c)
{
	BUF *b;
	// Validate arguments
	if (p == NULL || c == NULL)
	{
		return;
	}

	FUNC10(p, "AccountName", c->AccountName);

	FUNC8(p, "ServerName", c->ServerName);
	FUNC8(p, "ServerProductName", c->ServerProductName);
	FUNC8(p, "CipherName", c->CipherName);
	FUNC8(p, "SessionName", c->SessionName);
	FUNC8(p, "ConnectionName", c->ConnectionName);

	FUNC5(p, "SessionKey", c->SessionKey, SHA1_SIZE);

	FUNC3(p, "Active", c->Active);
	FUNC3(p, "Connected", c->Connected);
	FUNC6(p, "SessionStatus", c->SessionStatus);
	FUNC6(p, "ServerPort", c->ServerPort);
	FUNC6(p, "ServerProductVer", c->ServerProductVer);
	FUNC6(p, "ServerProductBuild", c->ServerProductBuild);
	FUNC6(p, "NumConnectionsEstablished", c->NumConnectionsEstablished);
	FUNC3(p, "HalfConnection", c->HalfConnection);
	FUNC3(p, "QoS", c->QoS);
	FUNC6(p, "MaxTcpConnections", c->MaxTcpConnections);
	FUNC6(p, "NumTcpConnections", c->NumTcpConnections);
	FUNC6(p, "NumTcpConnectionsUpload", c->NumTcpConnectionsUpload);
	FUNC6(p, "NumTcpConnectionsDownload", c->NumTcpConnectionsDownload);
	FUNC3(p, "UseEncrypt", c->UseEncrypt);
	FUNC3(p, "UseCompress", c->UseCompress);
	FUNC3(p, "IsRUDPSession", c->IsRUDPSession);
	FUNC8(p, "UnderlayProtocol", c->UnderlayProtocol);
	FUNC3(p, "IsUdpAccelerationEnabled", c->IsUdpAccelerationEnabled);
	FUNC3(p, "IsUsingUdpAcceleration", c->IsUsingUdpAcceleration);

	FUNC3(p, "IsBridgeMode", c->IsBridgeMode);
	FUNC3(p, "IsMonitorMode", c->IsMonitorMode);

	FUNC9(p, "StartTime", c->StartTime);
	FUNC9(p, "FirstConnectionEstablisiedTime", c->FirstConnectionEstablisiedTime);
	FUNC9(p, "CurrentConnectionEstablishTime", c->CurrentConnectionEstablishTime);
	FUNC7(p, "TotalSendSize", c->TotalSendSize);
	FUNC7(p, "TotalRecvSize", c->TotalRecvSize);
	FUNC7(p, "TotalSendSizeReal", c->TotalSendSizeReal);
	FUNC7(p, "TotalRecvSizeReal", c->TotalRecvSizeReal);

	FUNC6(p, "VLanId", c->VLanId);

	FUNC1(p, &c->Policy);

	FUNC2(p, &c->Traffic);

	if (c->ServerX != NULL)
	{
		b = FUNC11(c->ServerX, false);
		FUNC4(p, "ServerX", b);
		FUNC0(b);
	}

	if (c->ClientX != NULL)
	{
		b = FUNC11(c->ClientX, false);
		FUNC4(p, "ClientX", b);
		FUNC0(b);
	}
}