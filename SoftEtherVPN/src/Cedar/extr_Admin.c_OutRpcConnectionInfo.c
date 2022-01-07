
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Type; int ClientBuild; int ClientVer; int ServerBuild; int ServerVer; int ClientStr; int ServerStr; int Hostname; int ConnectedTime; int Port; int Ip; int Name; } ;
typedef TYPE_1__ RPC_CONNECTION_INFO ;
typedef int PACK ;


 int PackAddInt (int *,char*,int ) ;
 int PackAddIp32 (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddTime64 (int *,char*,int ) ;

void OutRpcConnectionInfo(PACK *p, RPC_CONNECTION_INFO *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "Name", t->Name);
 PackAddIp32(p, "Ip", t->Ip);
 PackAddInt(p, "Port", t->Port);
 PackAddTime64(p, "ConnectedTime", t->ConnectedTime);
 PackAddStr(p, "Hostname", t->Hostname);
 PackAddStr(p, "ServerStr", t->ServerStr);
 PackAddStr(p, "ClientStr", t->ClientStr);
 PackAddInt(p, "ServerVer", t->ServerVer);
 PackAddInt(p, "ServerBuild", t->ServerBuild);
 PackAddInt(p, "ClientVer", t->ClientVer);
 PackAddInt(p, "ClientBuild", t->ClientBuild);
 PackAddInt(p, "Type", t->Type);
}
