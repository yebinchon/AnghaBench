
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int NodeInfo; int Status; int ClientIpAddress; int ClientHostName; int ClientIp6; int ClientIp; int RealUsername; int GroupName; int Username; int Name; int HubName; } ;
typedef TYPE_1__ RPC_SESSION_STATUS ;
typedef int PACK ;


 int OutRpcClientGetConnectionStatus (int *,int *) ;
 int OutRpcNodeInfo (int *,int *) ;
 int PackAddData (int *,char*,int ,int) ;
 int PackAddIp (int *,char*,int *) ;
 int PackAddIp32 (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcSessionStatus(PACK *p, RPC_SESSION_STATUS *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 PackAddStr(p, "Name", t->Name);
 PackAddStr(p, "Username", t->Username);
 PackAddStr(p, "GroupName", t->GroupName);
 PackAddStr(p, "RealUsername", t->RealUsername);
 PackAddIp32(p, "SessionStatus_ClientIp", t->ClientIp);
 PackAddData(p, "SessionStatus_ClientIp6", t->ClientIp6, sizeof(t->ClientIp6));
 PackAddStr(p, "SessionStatus_ClientHostName", t->ClientHostName);
 PackAddIp(p, "Client_Ip_Address", &t->ClientIpAddress);

 OutRpcClientGetConnectionStatus(p, &t->Status);
 OutRpcNodeInfo(p, &t->NodeInfo);
}
