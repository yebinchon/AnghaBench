
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_15__ {int Active; scalar_t__ SessionStatus; int Connected; scalar_t__ NumTcpConnections; int NumConnectionsEstablished; void* FirstConnectionEstablisiedTime; void* StartTime; int IsMonitorMode; int IsBridgeMode; int Traffic; int ServerPort; int ServerName; int ConnectionName; int SessionName; int TotalSendSizeReal; int TotalRecvSizeReal; int TotalRecvSize; int TotalSendSize; int Policy; int * SessionKey; int IsUsingUdpAcceleration; int IsUdpAccelerationEnabled; int UnderlayProtocol; int IsRUDPSession; int UseCompress; int CipherName; scalar_t__ UseEncrypt; int NumTcpConnectionsUpload; int NumTcpConnectionsDownload; scalar_t__ HalfConnection; int QoS; int VLanId; int MaxTcpConnections; void* CurrentConnectionEstablishTime; void* ClientX; void* ServerX; int ServerProductBuild; int ServerProductVer; int ServerProductName; int AccountName; } ;
struct TYPE_14__ {scalar_t__ ClientStatus; int ServerMode; int lock; int NumConnectionsEstablished; int FirstConnectionEstablisiedTime; int CreatedTime; TYPE_3__* Connection; int IsMonitorMode; int IsBridgeMode; int TrafficLock; int Traffic; int Name; int TotalRecvSizeReal; int TotalSendSizeReal; int TotalSendSize; int TotalRecvSize; int Policy; int SessionKey; int IsUsingUdpAcceleration; int UseUdpAcceleration; int UnderlayProtocol; int IsRUDPSession; int UseCompress; scalar_t__ UseEncrypt; int QoS; int VLanId; scalar_t__ HalfConnection; int MaxConnection; int CurrentConnectionEstablishTime; TYPE_1__* ClientOption; } ;
struct TYPE_13__ {int Direction; } ;
struct TYPE_12__ {scalar_t__ Protocol; int lock; int ServerPort; int ServerName; int Name; int CipherName; TYPE_2__* Tcp; int ClientX; int ServerX; int ServerBuild; int ServerVer; int ServerStr; } ;
struct TYPE_11__ {int TcpSockList; } ;
struct TYPE_10__ {int AccountName; } ;
typedef int TRAFFIC ;
typedef TYPE_4__ TCPSOCK ;
typedef TYPE_5__ SESSION ;
typedef TYPE_6__ RPC_CLIENT_GET_CONNECTION_STATUS ;
typedef int POLICY ;


 scalar_t__ CLIENT_STATUS_ESTABLISHED ;
 scalar_t__ CONNECTION_TCP ;
 void* CloneX (int ) ;
 int Copy (int *,int ,int) ;
 TYPE_4__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int SHA1_SIZE ;
 int StrCpy (int ,int,int ) ;
 int TCP_SERVER_TO_CLIENT ;
 void* TickToTime (int ) ;
 int UniStrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;

void CiGetSessionStatus(RPC_CLIENT_GET_CONNECTION_STATUS *st, SESSION *s)
{

 if (st == ((void*)0) || s == ((void*)0))
 {
  return;
 }

 Lock(s->lock);
 {

  st->Active = 1;


  st->SessionStatus = s->ClientStatus;


  UniStrCpy(st->AccountName, sizeof(st->AccountName), s->ClientOption->AccountName);

  if (s->ClientStatus == CLIENT_STATUS_ESTABLISHED && s->Connection != ((void*)0))
  {
   Lock(s->Connection->lock);
   {

    st->Connected = 1;

    StrCpy(st->ServerProductName, sizeof(st->ServerProductName), s->Connection->ServerStr);

    st->ServerProductVer = s->Connection->ServerVer;

    st->ServerProductBuild = s->Connection->ServerBuild;

    st->ServerX = CloneX(s->Connection->ServerX);

    st->ClientX = CloneX(s->Connection->ClientX);

    st->CurrentConnectionEstablishTime = TickToTime(s->CurrentConnectionEstablishTime);

    st->MaxTcpConnections = s->MaxConnection;

    st->HalfConnection = s->HalfConnection;

    st->VLanId = s->VLanId;

    st->QoS = s->QoS;
    if (s->Connection->Protocol == CONNECTION_TCP)
    {
     UINT i;

     LockList(s->Connection->Tcp->TcpSockList);
     {
      st->NumTcpConnections = LIST_NUM(s->Connection->Tcp->TcpSockList);
      if (st->HalfConnection)
      {
       for (i = 0;i < st->NumTcpConnections;i++)
       {
        TCPSOCK *ts = LIST_DATA(s->Connection->Tcp->TcpSockList, i);
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
     UnlockList(s->Connection->Tcp->TcpSockList);
    }

    st->UseEncrypt = s->UseEncrypt;
    if (st->UseEncrypt)
    {
     StrCpy(st->CipherName, sizeof(st->CipherName), s->Connection->CipherName);
    }

    st->UseCompress = s->UseCompress;

    st->IsRUDPSession = s->IsRUDPSession;

    StrCpy(st->UnderlayProtocol, sizeof(st->UnderlayProtocol), s->UnderlayProtocol);

    st->IsUdpAccelerationEnabled = s->UseUdpAcceleration;
    st->IsUsingUdpAcceleration = s->IsUsingUdpAcceleration;

    Copy(st->SessionKey, s->SessionKey, SHA1_SIZE);

    Copy(&st->Policy, s->Policy, sizeof(POLICY));

    if (s->ServerMode == 0)
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

    StrCpy(st->SessionName, sizeof(st->SessionName), s->Name);

    StrCpy(st->ConnectionName, sizeof(st->ConnectionName), s->Connection->Name);

    StrCpy(st->ServerName, sizeof(st->ServerName), s->Connection->ServerName);

    st->ServerPort = s->Connection->ServerPort;

    Lock(s->TrafficLock);
    {
     Copy(&st->Traffic, s->Traffic, sizeof(TRAFFIC));
    }
    Unlock(s->TrafficLock);

    st->IsBridgeMode = s->IsBridgeMode;
    st->IsMonitorMode = s->IsMonitorMode;
   }
   Unlock(s->Connection->lock);
  }

  st->StartTime = TickToTime(s->CreatedTime);


  st->FirstConnectionEstablisiedTime = TickToTime(s->FirstConnectionEstablisiedTime);

  st->NumConnectionsEstablished = s->NumConnectionsEstablished;
 }
 Unlock(s->lock);
}
