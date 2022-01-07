
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumItem; TYPE_1__* Items; } ;
struct TYPE_4__ {int Online; int Active; int NumTables; int NumInterfaces; int Name; } ;
typedef TYPE_1__ RPC_ENUM_L3SW_ITEM ;
typedef TYPE_2__ RPC_ENUM_L3SW ;
typedef int PACK ;


 int PackAddBoolEx (int *,char*,int ,size_t,size_t) ;
 int PackAddInt (int *,char*,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumL3Sw(PACK *p, RPC_ENUM_L3SW *t)
{
 UINT i;

 if (p == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "NumItem", t->NumItem);

 PackSetCurrentJsonGroupName(p, "L3SWList");
 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_L3SW_ITEM *s = &t->Items[i];

  PackAddStrEx(p, "Name", s->Name, i, t->NumItem);
  PackAddIntEx(p, "NumInterfaces", s->NumInterfaces, i, t->NumItem);
  PackAddIntEx(p, "NumTables", s->NumTables, i, t->NumItem);
  PackAddBoolEx(p, "Active", s->Active, i, t->NumItem);
  PackAddBoolEx(p, "Online", s->Online, i, t->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
