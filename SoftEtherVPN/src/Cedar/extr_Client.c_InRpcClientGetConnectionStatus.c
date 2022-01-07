
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Active; int Connected; int HalfConnection; int QoS; int UseEncrypt; int UseCompress; int IsRUDPSession; int IsUdpAccelerationEnabled; int IsUsingUdpAcceleration; int Traffic; int Policy; void* ClientX; void* ServerX; void* VLanId; void* IsMonitorMode; void* IsBridgeMode; int UnderlayProtocol; void* TotalRecvSizeReal; void* TotalSendSizeReal; void* TotalRecvSize; void* TotalSendSize; void* CurrentConnectionEstablishTime; void* FirstConnectionEstablisiedTime; void* StartTime; void* NumTcpConnectionsDownload; void* NumTcpConnectionsUpload; void* NumTcpConnections; void* MaxTcpConnections; void* NumConnectionsEstablished; void* ServerProductBuild; void* ServerProductVer; void* ServerPort; void* SessionStatus; int SessionKey; int ConnectionName; int SessionName; int CipherName; int ServerProductName; int ServerName; int AccountName; } ;
typedef TYPE_1__ RPC_CLIENT_GET_CONNECTION_STATUS ;
typedef int PACK ;
typedef int BUF ;


 void* BufToX (int *,int) ;
 int FreeBuf (int *) ;
 int InRpcPolicy (int *,int *) ;
 int InRpcTraffic (int *,int *) ;
 void* PackGetBool (int *,char*) ;
 int * PackGetBuf (int *,char*) ;
 int PackGetData (int *,char*,int ) ;
 scalar_t__ PackGetDataSize (int *,char*) ;
 void* PackGetInt (int *,char*) ;
 void* PackGetInt64 (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetUniStr (int *,char*,int ,int) ;
 scalar_t__ SHA1_SIZE ;
 int Zero (TYPE_1__*,int) ;

void InRpcClientGetConnectionStatus(RPC_CLIENT_GET_CONNECTION_STATUS *s, PACK *p)
{
 BUF *b;

 if (s == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(s, sizeof(RPC_CLIENT_GET_CONNECTION_STATUS));

 PackGetUniStr(p, "AccountName", s->AccountName, sizeof(s->AccountName));

 PackGetStr(p, "ServerName", s->ServerName, sizeof(s->ServerName));
 PackGetStr(p, "ServerProductName", s->ServerProductName, sizeof(s->ServerProductName));
 PackGetStr(p, "CipherName", s->CipherName, sizeof(s->CipherName));
 PackGetStr(p, "SessionName", s->SessionName, sizeof(s->SessionName));
 PackGetStr(p, "ConnectionName", s->ConnectionName, sizeof(s->ConnectionName));

 if (PackGetDataSize(p, "SessionKey") == SHA1_SIZE)
 {
  PackGetData(p, "SessionKey", s->SessionKey);
 }

 s->SessionStatus = PackGetInt(p, "SessionStatus");
 s->ServerPort = PackGetInt(p, "ServerPort");
 s->ServerProductVer = PackGetInt(p, "ServerProductVer");
 s->ServerProductBuild = PackGetInt(p, "ServerProductBuild");
 s->NumConnectionsEstablished = PackGetInt(p, "NumConnectionsEstablished");
 s->MaxTcpConnections = PackGetInt(p, "MaxTcpConnections");
 s->NumTcpConnections = PackGetInt(p, "NumTcpConnections");
 s->NumTcpConnectionsUpload = PackGetInt(p, "NumTcpConnectionsUpload");
 s->NumTcpConnectionsDownload = PackGetInt(p, "NumTcpConnectionsDownload");

 s->StartTime = PackGetInt64(p, "StartTime");

 s->FirstConnectionEstablisiedTime = PackGetInt64(p, "FirstConnectionEstablisiedTime");
 s->CurrentConnectionEstablishTime = PackGetInt64(p, "CurrentConnectionEstablishTime");
 s->TotalSendSize = PackGetInt64(p, "TotalSendSize");
 s->TotalRecvSize = PackGetInt64(p, "TotalRecvSize");
 s->TotalSendSizeReal = PackGetInt64(p, "TotalSendSizeReal");
 s->TotalRecvSizeReal = PackGetInt64(p, "TotalRecvSizeReal");

 s->Active = PackGetInt(p, "Active") ? 1 : 0;
 s->Connected = PackGetInt(p, "Connected") ? 1 : 0;
 s->HalfConnection = PackGetInt(p, "HalfConnection") ? 1 : 0;
 s->QoS = PackGetInt(p, "QoS") ? 1 : 0;
 s->UseEncrypt = PackGetInt(p, "UseEncrypt") ? 1 : 0;
 s->UseCompress = PackGetInt(p, "UseCompress") ? 1 : 0;
 s->IsRUDPSession = PackGetInt(p, "IsRUDPSession") ? 1 : 0;
 PackGetStr(p, "UnderlayProtocol", s->UnderlayProtocol, sizeof(s->UnderlayProtocol));
 s->IsUdpAccelerationEnabled = PackGetInt(p, "IsUdpAccelerationEnabled") ? 1 : 0;
 s->IsUsingUdpAcceleration = PackGetInt(p, "IsUsingUdpAcceleration") ? 1 : 0;

 s->IsBridgeMode = PackGetBool(p, "IsBridgeMode");
 s->IsMonitorMode = PackGetBool(p, "IsMonitorMode");

 s->VLanId = PackGetInt(p, "VLanId");

 b = PackGetBuf(p, "ServerX");
 if (b != ((void*)0))
 {
  s->ServerX = BufToX(b, 0);
  FreeBuf(b);
 }

 b = PackGetBuf(p, "ClientX");
 if (b != ((void*)0))
 {
  s->ClientX = BufToX(b, 0);
  FreeBuf(b);
 }

 InRpcPolicy(&s->Policy, p);

 InRpcTraffic(&s->Traffic, p);
}
