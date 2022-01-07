
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumConnection; TYPE_1__* Connections; } ;
struct TYPE_4__ {int Type; int ConnectedTime; int Hostname; int Name; int Port; int Ip; } ;
typedef TYPE_1__ RPC_ENUM_CONNECTION_ITEM ;
typedef TYPE_2__ RPC_ENUM_CONNECTION ;
typedef int PACK ;


 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddIp32Ex (int *,char*,int ,size_t,size_t) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackAddTime64Ex (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumConnection(PACK *p, RPC_ENUM_CONNECTION *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackSetCurrentJsonGroupName(p, "ConnectionList");
 for (i = 0;i < t->NumConnection;i++)
 {
  RPC_ENUM_CONNECTION_ITEM *e = &t->Connections[i];

  PackAddIp32Ex(p, "Ip", e->Ip, i, t->NumConnection);
  PackAddIntEx(p, "Port", e->Port, i, t->NumConnection);
  PackAddStrEx(p, "Name", e->Name, i, t->NumConnection);
  PackAddStrEx(p, "Hostname", e->Hostname, i, t->NumConnection);
  PackAddTime64Ex(p, "ConnectedTime", e->ConnectedTime, i, t->NumConnection);
  PackAddIntEx(p, "Type", e->Type, i, t->NumConnection);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
