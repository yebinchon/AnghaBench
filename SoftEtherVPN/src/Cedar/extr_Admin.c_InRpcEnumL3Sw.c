
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumItem; TYPE_1__* Items; } ;
struct TYPE_6__ {void* Online; void* Active; void* NumTables; void* NumInterfaces; int Name; } ;
typedef TYPE_1__ RPC_ENUM_L3SW_ITEM ;
typedef TYPE_2__ RPC_ENUM_L3SW ;
typedef int PACK ;


 void* PackGetBoolEx (int *,char*,size_t) ;
 int PackGetInt (int *,char*) ;
 void* PackGetIntEx (int *,char*,size_t) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumL3Sw(RPC_ENUM_L3SW *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_L3SW));
 t->NumItem = PackGetInt(p, "NumItem");
 t->Items = ZeroMalloc(sizeof(RPC_ENUM_L3SW_ITEM) * t->NumItem);

 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_L3SW_ITEM *s = &t->Items[i];

  PackGetStrEx(p, "Name", s->Name, sizeof(s->Name), i);
  s->NumInterfaces = PackGetIntEx(p, "NumInterfaces", i);
  s->NumTables = PackGetIntEx(p, "NumTables", i);
  s->Active = PackGetBoolEx(p, "Active", i);
  s->Online = PackGetBoolEx(p, "Online", i);
 }
}
