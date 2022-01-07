
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ClientX; int * ServerX; int Traffic; int Policy; int VLanId; int TotalRecvSizeReal; int TotalSendSizeReal; int TotalRecvSize; int TotalSendSize; int CurrentConnectionEstablishTime; int FirstConnectionEstablisiedTime; int StartTime; int IsMonitorMode; int IsBridgeMode; int IsUsingUdpAcceleration; int IsUdpAccelerationEnabled; int UnderlayProtocol; int IsRUDPSession; int UseCompress; int UseEncrypt; int NumTcpConnectionsDownload; int NumTcpConnectionsUpload; int NumTcpConnections; int MaxTcpConnections; int QoS; int HalfConnection; int NumConnectionsEstablished; int ServerProductBuild; int ServerProductVer; int ServerPort; int SessionStatus; int Connected; int Active; int SessionKey; int ConnectionName; int SessionName; int CipherName; int ServerProductName; int ServerName; int AccountName; } ;
typedef TYPE_1__ RPC_CLIENT_GET_CONNECTION_STATUS ;
typedef int PACK ;
typedef int BUF ;


 int FreeBuf (int *) ;
 int OutRpcPolicy (int *,int *) ;
 int OutRpcTraffic (int *,int *) ;
 int PackAddBool (int *,char*,int ) ;
 int PackAddBuf (int *,char*,int *) ;
 int PackAddData (int *,char*,int ,int ) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddInt64 (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddTime64 (int *,char*,int ) ;
 int PackAddUniStr (int *,char*,int ) ;
 int SHA1_SIZE ;
 int * XToBuf (int *,int) ;

void OutRpcClientGetConnectionStatus(PACK *p, RPC_CLIENT_GET_CONNECTION_STATUS *c)
{
 BUF *b;

 if (p == ((void*)0) || c == ((void*)0))
 {
  return;
 }

 PackAddUniStr(p, "AccountName", c->AccountName);

 PackAddStr(p, "ServerName", c->ServerName);
 PackAddStr(p, "ServerProductName", c->ServerProductName);
 PackAddStr(p, "CipherName", c->CipherName);
 PackAddStr(p, "SessionName", c->SessionName);
 PackAddStr(p, "ConnectionName", c->ConnectionName);

 PackAddData(p, "SessionKey", c->SessionKey, SHA1_SIZE);

 PackAddBool(p, "Active", c->Active);
 PackAddBool(p, "Connected", c->Connected);
 PackAddInt(p, "SessionStatus", c->SessionStatus);
 PackAddInt(p, "ServerPort", c->ServerPort);
 PackAddInt(p, "ServerProductVer", c->ServerProductVer);
 PackAddInt(p, "ServerProductBuild", c->ServerProductBuild);
 PackAddInt(p, "NumConnectionsEstablished", c->NumConnectionsEstablished);
 PackAddBool(p, "HalfConnection", c->HalfConnection);
 PackAddBool(p, "QoS", c->QoS);
 PackAddInt(p, "MaxTcpConnections", c->MaxTcpConnections);
 PackAddInt(p, "NumTcpConnections", c->NumTcpConnections);
 PackAddInt(p, "NumTcpConnectionsUpload", c->NumTcpConnectionsUpload);
 PackAddInt(p, "NumTcpConnectionsDownload", c->NumTcpConnectionsDownload);
 PackAddBool(p, "UseEncrypt", c->UseEncrypt);
 PackAddBool(p, "UseCompress", c->UseCompress);
 PackAddBool(p, "IsRUDPSession", c->IsRUDPSession);
 PackAddStr(p, "UnderlayProtocol", c->UnderlayProtocol);
 PackAddBool(p, "IsUdpAccelerationEnabled", c->IsUdpAccelerationEnabled);
 PackAddBool(p, "IsUsingUdpAcceleration", c->IsUsingUdpAcceleration);

 PackAddBool(p, "IsBridgeMode", c->IsBridgeMode);
 PackAddBool(p, "IsMonitorMode", c->IsMonitorMode);

 PackAddTime64(p, "StartTime", c->StartTime);
 PackAddTime64(p, "FirstConnectionEstablisiedTime", c->FirstConnectionEstablisiedTime);
 PackAddTime64(p, "CurrentConnectionEstablishTime", c->CurrentConnectionEstablishTime);
 PackAddInt64(p, "TotalSendSize", c->TotalSendSize);
 PackAddInt64(p, "TotalRecvSize", c->TotalRecvSize);
 PackAddInt64(p, "TotalSendSizeReal", c->TotalSendSizeReal);
 PackAddInt64(p, "TotalRecvSizeReal", c->TotalRecvSizeReal);

 PackAddInt(p, "VLanId", c->VLanId);

 OutRpcPolicy(p, &c->Policy);

 OutRpcTraffic(p, &c->Traffic);

 if (c->ServerX != ((void*)0))
 {
  b = XToBuf(c->ServerX, 0);
  PackAddBuf(p, "ServerX", b);
  FreeBuf(b);
 }

 if (c->ClientX != ((void*)0))
 {
  b = XToBuf(c->ClientX, 0);
  PackAddBuf(p, "ClientX", b);
  FreeBuf(b);
 }
}
