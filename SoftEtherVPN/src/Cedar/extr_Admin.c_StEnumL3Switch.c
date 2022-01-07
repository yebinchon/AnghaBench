
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_18__ {TYPE_1__* Server; } ;
struct TYPE_17__ {int L3SwList; } ;
struct TYPE_16__ {int lock; int Online; int Active; int TableList; int IfList; int Name; } ;
struct TYPE_15__ {size_t NumItem; TYPE_2__* Items; } ;
struct TYPE_14__ {size_t NumInterfaces; size_t NumTables; int Online; int Active; int Name; } ;
struct TYPE_13__ {TYPE_5__* Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_ENUM_L3SW_ITEM ;
typedef TYPE_3__ RPC_ENUM_L3SW ;
typedef TYPE_4__ L3SW ;
typedef TYPE_5__ CEDAR ;
typedef TYPE_6__ ADMIN ;


 size_t ERR_NO_ERROR ;
 int FreeRpcEnumL3Sw (TYPE_3__*) ;
 TYPE_4__* LIST_DATA (int ,size_t) ;
 size_t LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int StrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 int Zero (TYPE_3__*,int) ;
 TYPE_2__* ZeroMalloc (int) ;

UINT StEnumL3Switch(ADMIN *a, RPC_ENUM_L3SW *t)
{
 UINT i;
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;

 NO_SUPPORT_FOR_BRIDGE;

 FreeRpcEnumL3Sw(t);
 Zero(t, sizeof(RPC_ENUM_L3SW));

 LockList(c->L3SwList);
 {
  t->NumItem = LIST_NUM(c->L3SwList);
  t->Items = ZeroMalloc(sizeof(RPC_ENUM_L3SW_ITEM) * t->NumItem);
  for (i = 0;i < LIST_NUM(c->L3SwList);i++)
  {
   L3SW *sw = LIST_DATA(c->L3SwList, i);
   RPC_ENUM_L3SW_ITEM *e = &t->Items[i];

   Lock(sw->lock);
   {
    StrCpy(e->Name, sizeof(e->Name), sw->Name);
    e->NumInterfaces = LIST_NUM(sw->IfList);
    e->NumTables = LIST_NUM(sw->TableList);
    e->Active = sw->Active;
    e->Online = sw->Online;
   }
   Unlock(sw->lock);
  }
 }
 UnlockList(c->L3SwList);

 return ret;
}
