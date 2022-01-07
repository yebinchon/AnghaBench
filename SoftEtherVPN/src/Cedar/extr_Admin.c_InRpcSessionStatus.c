
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int NodeInfo; int Status; int ClientIpAddress; int ClientHostName; int ClientIp6; int ClientIp; int RealUsername; int GroupName; int Username; int Name; int HubName; } ;
typedef TYPE_1__ RPC_SESSION_STATUS ;
typedef int PACK ;


 int InRpcClientGetConnectionStatus (int *,int *) ;
 int InRpcNodeInfo (int *,int *) ;
 int PackGetData2 (int *,char*,int ,int) ;
 int PackGetIp (int *,char*,int *) ;
 int PackGetIp32 (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcSessionStatus(RPC_SESSION_STATUS *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_SESSION_STATUS));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 PackGetStr(p, "Name", t->Name, sizeof(t->Name));
 PackGetStr(p, "Username", t->Username, sizeof(t->Username));
 PackGetStr(p, "GroupName", t->GroupName, sizeof(t->GroupName));
 PackGetStr(p, "RealUsername", t->RealUsername, sizeof(t->RealUsername));
 t->ClientIp = PackGetIp32(p, "SessionStatus_ClientIp");
 PackGetData2(p, "SessionStatus_ClientIp6", t->ClientIp6, sizeof(t->ClientIp6));
 PackGetStr(p, "SessionStatus_ClientHostName", t->ClientHostName, sizeof(t->ClientHostName));
 PackGetIp(p, "Client_Ip_Address", &t->ClientIpAddress);

 InRpcClientGetConnectionStatus(&t->Status, p);
 InRpcNodeInfo(&t->NodeInfo, p);
}
