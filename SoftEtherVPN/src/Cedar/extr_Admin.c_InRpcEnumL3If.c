
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumItem; TYPE_1__* Items; int Name; } ;
struct TYPE_6__ {void* SubnetMask; void* IpAddress; int HubName; } ;
typedef TYPE_1__ RPC_L3IF ;
typedef TYPE_2__ RPC_ENUM_L3IF ;
typedef int PACK ;


 int PackGetInt (int *,char*) ;
 void* PackGetIp32Ex (int *,char*,size_t) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumL3If(RPC_ENUM_L3IF *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_L3IF));
 t->NumItem = PackGetInt(p, "NumItem");
 PackGetStr(p, "Name", t->Name, sizeof(t->Name));
 t->Items = ZeroMalloc(sizeof(RPC_L3IF) * t->NumItem);

 for (i = 0;i < t->NumItem;i++)
 {
  RPC_L3IF *f = &t->Items[i];

  PackGetStrEx(p, "HubName", f->HubName, sizeof(f->HubName), i);
  f->IpAddress = PackGetIp32Ex(p, "IpAddress", i);
  f->SubnetMask = PackGetIp32Ex(p, "SubnetMask", i);
 }
}
