
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumConnection; TYPE_1__* Connections; } ;
struct TYPE_6__ {void* Type; int ConnectedTime; int Hostname; int Name; void* Port; int Ip; } ;
typedef TYPE_1__ RPC_ENUM_CONNECTION_ITEM ;
typedef TYPE_2__ RPC_ENUM_CONNECTION ;
typedef int PACK ;


 int PackGetIndexCount (int *,char*) ;
 int PackGetInt64Ex (int *,char*,size_t) ;
 void* PackGetIntEx (int *,char*,size_t) ;
 int PackGetIp32Ex (int *,char*,size_t) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumConnection(RPC_ENUM_CONNECTION *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_CONNECTION));
 t->NumConnection = PackGetIndexCount(p, "Name");
 t->Connections = ZeroMalloc(sizeof(RPC_ENUM_CONNECTION_ITEM) * t->NumConnection);

 for (i = 0;i < t->NumConnection;i++)
 {
  RPC_ENUM_CONNECTION_ITEM *e = &t->Connections[i];

  e->Ip = PackGetIp32Ex(p, "Ip", i);
  e->Port = PackGetIntEx(p, "Port", i);
  PackGetStrEx(p, "Name", e->Name, sizeof(e->Name), i);
  PackGetStrEx(p, "Hostname", e->Hostname, sizeof(e->Hostname), i);
  e->ConnectedTime = PackGetInt64Ex(p, "ConnectedTime", i);
  e->Type = PackGetIntEx(p, "Type", i);
 }
}
