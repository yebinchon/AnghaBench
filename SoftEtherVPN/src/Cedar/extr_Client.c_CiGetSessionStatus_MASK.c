#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_15__ {int Active; scalar_t__ SessionStatus; int Connected; scalar_t__ NumTcpConnections; int /*<<< orphan*/  NumConnectionsEstablished; void* FirstConnectionEstablisiedTime; void* StartTime; int /*<<< orphan*/  IsMonitorMode; int /*<<< orphan*/  IsBridgeMode; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  ServerPort; int /*<<< orphan*/  ServerName; int /*<<< orphan*/  ConnectionName; int /*<<< orphan*/  SessionName; int /*<<< orphan*/  TotalSendSizeReal; int /*<<< orphan*/  TotalRecvSizeReal; int /*<<< orphan*/  TotalRecvSize; int /*<<< orphan*/  TotalSendSize; int /*<<< orphan*/  Policy; int /*<<< orphan*/ * SessionKey; int /*<<< orphan*/  IsUsingUdpAcceleration; int /*<<< orphan*/  IsUdpAccelerationEnabled; int /*<<< orphan*/  UnderlayProtocol; int /*<<< orphan*/  IsRUDPSession; int /*<<< orphan*/  UseCompress; int /*<<< orphan*/  CipherName; scalar_t__ UseEncrypt; int /*<<< orphan*/  NumTcpConnectionsUpload; int /*<<< orphan*/  NumTcpConnectionsDownload; scalar_t__ HalfConnection; int /*<<< orphan*/  QoS; int /*<<< orphan*/  VLanId; int /*<<< orphan*/  MaxTcpConnections; void* CurrentConnectionEstablishTime; void* ClientX; void* ServerX; int /*<<< orphan*/  ServerProductBuild; int /*<<< orphan*/  ServerProductVer; int /*<<< orphan*/  ServerProductName; int /*<<< orphan*/  AccountName; } ;
struct TYPE_14__ {scalar_t__ ClientStatus; int ServerMode; int /*<<< orphan*/  lock; int /*<<< orphan*/  NumConnectionsEstablished; int /*<<< orphan*/  FirstConnectionEstablisiedTime; int /*<<< orphan*/  CreatedTime; TYPE_3__* Connection; int /*<<< orphan*/  IsMonitorMode; int /*<<< orphan*/  IsBridgeMode; int /*<<< orphan*/  TrafficLock; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  Name; int /*<<< orphan*/  TotalRecvSizeReal; int /*<<< orphan*/  TotalSendSizeReal; int /*<<< orphan*/  TotalSendSize; int /*<<< orphan*/  TotalRecvSize; int /*<<< orphan*/  Policy; int /*<<< orphan*/  SessionKey; int /*<<< orphan*/  IsUsingUdpAcceleration; int /*<<< orphan*/  UseUdpAcceleration; int /*<<< orphan*/  UnderlayProtocol; int /*<<< orphan*/  IsRUDPSession; int /*<<< orphan*/  UseCompress; scalar_t__ UseEncrypt; int /*<<< orphan*/  QoS; int /*<<< orphan*/  VLanId; scalar_t__ HalfConnection; int /*<<< orphan*/  MaxConnection; int /*<<< orphan*/  CurrentConnectionEstablishTime; TYPE_1__* ClientOption; } ;
struct TYPE_13__ {int Direction; } ;
struct TYPE_12__ {scalar_t__ Protocol; int /*<<< orphan*/  lock; int /*<<< orphan*/  ServerPort; int /*<<< orphan*/  ServerName; int /*<<< orphan*/  Name; int /*<<< orphan*/  CipherName; TYPE_2__* Tcp; int /*<<< orphan*/  ClientX; int /*<<< orphan*/  ServerX; int /*<<< orphan*/  ServerBuild; int /*<<< orphan*/  ServerVer; int /*<<< orphan*/  ServerStr; } ;
struct TYPE_11__ {int /*<<< orphan*/  TcpSockList; } ;
struct TYPE_10__ {int /*<<< orphan*/  AccountName; } ;
typedef  int /*<<< orphan*/  TRAFFIC ;
typedef  TYPE_4__ TCPSOCK ;
typedef  TYPE_5__ SESSION ;
typedef  TYPE_6__ RPC_CLIENT_GET_CONNECTION_STATUS ;
typedef  int /*<<< orphan*/  POLICY ;

/* Variables and functions */
 scalar_t__ CLIENT_STATUS_ESTABLISHED ; 
 scalar_t__ CONNECTION_TCP ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int TCP_SERVER_TO_CLIENT ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(RPC_CLIENT_GET_CONNECTION_STATUS *st, SESSION *s)
{
	// Validate arguments
	if (st == NULL || s == NULL)
	{
		return;
	}

	FUNC4(s->lock);
	{
		// Operation flag
		st->Active = true;

		// Session status
		st->SessionStatus = s->ClientStatus;

		// Account name
		FUNC8(st->AccountName, sizeof(st->AccountName), s->ClientOption->AccountName);

		if (s->ClientStatus == CLIENT_STATUS_ESTABLISHED && s->Connection != NULL)
		{
			FUNC4(s->Connection->lock);
			{
				// Connected flag
				st->Connected = true;
				// Product name
				FUNC6(st->ServerProductName, sizeof(st->ServerProductName), s->Connection->ServerStr);
				// Version
				st->ServerProductVer = s->Connection->ServerVer;
				// Build Number
				st->ServerProductBuild = s->Connection->ServerBuild;
				// Server certificate
				st->ServerX = FUNC0(s->Connection->ServerX);
				// Client certificate
				st->ClientX = FUNC0(s->Connection->ClientX);
				// Connection completion time of this connection
				st->CurrentConnectionEstablishTime = FUNC7(s->CurrentConnectionEstablishTime);
				// Maximum number of the TCP connections
				st->MaxTcpConnections = s->MaxConnection;
				// Half-connection
				st->HalfConnection = s->HalfConnection;
				// VLAN
				st->VLanId = s->VLanId;
				// VoIP / QoS
				st->QoS = s->QoS;
				if (s->Connection->Protocol == CONNECTION_TCP)
				{
					UINT i;
					// Number of current TCP connections
					FUNC5(s->Connection->Tcp->TcpSockList);
					{
						st->NumTcpConnections = FUNC3(s->Connection->Tcp->TcpSockList);
						if (st->HalfConnection)
						{
							for (i = 0;i < st->NumTcpConnections;i++)
							{
								TCPSOCK *ts = FUNC2(s->Connection->Tcp->TcpSockList, i);
								if (ts->Direction & TCP_SERVER_TO_CLIENT)
								{
									st->NumTcpConnectionsDownload++;
								}
								else
								{
									st->NumTcpConnectionsUpload++;
								}
							}
						}
					}
					FUNC10(s->Connection->Tcp->TcpSockList);
				}
				// Use of encryption
				st->UseEncrypt = s->UseEncrypt;
				if (st->UseEncrypt)
				{
					FUNC6(st->CipherName, sizeof(st->CipherName), s->Connection->CipherName);
				}
				// Use of compression
				st->UseCompress = s->UseCompress;
				// R-UDP
				st->IsRUDPSession = s->IsRUDPSession;
				// Physical communication protocol
				FUNC6(st->UnderlayProtocol, sizeof(st->UnderlayProtocol), s->UnderlayProtocol);
				// UDP acceleration function
				st->IsUdpAccelerationEnabled = s->UseUdpAcceleration;
				st->IsUsingUdpAcceleration = s->IsUsingUdpAcceleration;
				// Session key
				FUNC1(st->SessionKey, s->SessionKey, SHA1_SIZE);
				// Policy
				FUNC1(&st->Policy, s->Policy, sizeof(POLICY));
				// Data size
				if (s->ServerMode == false)
				{
					st->TotalSendSize = s->TotalSendSize;
					st->TotalRecvSize = s->TotalRecvSize;
					st->TotalRecvSizeReal = s->TotalRecvSizeReal;
					st->TotalSendSizeReal = s->TotalSendSizeReal;
				}
				else
				{
					st->TotalSendSize = s->TotalRecvSize;
					st->TotalRecvSize = s->TotalSendSize;
					st->TotalRecvSizeReal = s->TotalSendSizeReal;
					st->TotalSendSizeReal = s->TotalRecvSizeReal;
				}
				// Session name
				FUNC6(st->SessionName, sizeof(st->SessionName), s->Name);
				// Connection name
				FUNC6(st->ConnectionName, sizeof(st->ConnectionName), s->Connection->Name);
				// Server name
				FUNC6(st->ServerName, sizeof(st->ServerName), s->Connection->ServerName);
				// Port number
				st->ServerPort = s->Connection->ServerPort;
				// Traffic data
				FUNC4(s->TrafficLock);
				{
					FUNC1(&st->Traffic, s->Traffic, sizeof(TRAFFIC));
				}
				FUNC9(s->TrafficLock);

				st->IsBridgeMode = s->IsBridgeMode;
				st->IsMonitorMode = s->IsMonitorMode;
			}
			FUNC9(s->Connection->lock);
		}
		// Connection start time
		st->StartTime = FUNC7(s->CreatedTime);
		// Connection completion time of the first connection
		/* !!! Do not correct the spelling to keep the backward protocol compatibility !!!  */
		st->FirstConnectionEstablisiedTime = FUNC7(s->FirstConnectionEstablisiedTime);
		// Number of connections have been established so far
		st->NumConnectionsEstablished = s->NumConnectionsEstablished;
	}
	FUNC9(s->lock);
}