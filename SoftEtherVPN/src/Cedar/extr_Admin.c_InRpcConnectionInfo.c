
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* Type; void* ClientBuild; void* ClientVer; void* ServerBuild; void* ServerVer; int ClientStr; int ServerStr; int Hostname; int ConnectedTime; void* Port; int Ip; int Name; } ;
typedef TYPE_1__ RPC_CONNECTION_INFO ;
typedef int PACK ;


 void* PackGetInt (int *,char*) ;
 int PackGetInt64 (int *,char*) ;
 int PackGetIp32 (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcConnectionInfo(RPC_CONNECTION_INFO *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_CONNECTION_INFO));
 PackGetStr(p, "Name", t->Name, sizeof(t->Name));
 t->Ip = PackGetIp32(p, "Ip");
 t->Port = PackGetInt(p, "Port");
 t->ConnectedTime = PackGetInt64(p, "ConnectedTime");
 PackGetStr(p, "Hostname", t->Hostname, sizeof(t->Hostname));
 PackGetStr(p, "ServerStr", t->ServerStr, sizeof(t->ServerStr));
 PackGetStr(p, "ClientStr", t->ClientStr, sizeof(t->ClientStr));
 t->ServerVer = PackGetInt(p, "ServerVer");
 t->ServerBuild = PackGetInt(p, "ServerBuild");
 t->ClientVer = PackGetInt(p, "ClientVer");
 t->ClientBuild = PackGetInt(p, "ClientBuild");
 t->Type = PackGetInt(p, "Type");
}
