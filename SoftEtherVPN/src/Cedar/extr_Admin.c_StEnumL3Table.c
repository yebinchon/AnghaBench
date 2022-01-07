
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int name ;
typedef size_t UINT ;
struct TYPE_20__ {TYPE_1__* Server; } ;
struct TYPE_19__ {int lock; int TableList; } ;
struct TYPE_18__ {int Metric; int GatewayAddress; int SubnetMask; int NetworkAddress; } ;
struct TYPE_17__ {char* Name; int NumItem; TYPE_2__* Items; } ;
struct TYPE_16__ {char* Name; int Metric; int GatewayAddress; int SubnetMask; int NetworkAddress; } ;
struct TYPE_15__ {int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_L3TABLE ;
typedef TYPE_3__ RPC_ENUM_L3TABLE ;
typedef TYPE_4__ L3TABLE ;
typedef TYPE_5__ L3SW ;
typedef int CEDAR ;
typedef TYPE_6__ ADMIN ;


 size_t ERR_INVALID_PARAMETER ;
 size_t ERR_LAYER3_SW_NOT_FOUND ;
 size_t ERR_NO_ERROR ;
 int FreeRpcEnumL3Table (TYPE_3__*) ;
 scalar_t__ IsEmptyStr (char*) ;
 TYPE_5__* L3GetSw (int *,char*) ;
 TYPE_4__* LIST_DATA (int ,size_t) ;
 int LIST_NUM (int ) ;
 int Lock (int ) ;
 int MAX_HUBNAME_LEN ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseL3Sw (TYPE_5__*) ;
 int StrCpy (char*,int,char*) ;
 int Unlock (int ) ;
 int Zero (TYPE_3__*,int) ;
 TYPE_2__* ZeroMalloc (int) ;

UINT StEnumL3Table(ADMIN *a, RPC_ENUM_L3TABLE *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;
 L3SW *sw;
 char name[MAX_HUBNAME_LEN + 1];

 if (IsEmptyStr(t->Name))
 {
  return ERR_INVALID_PARAMETER;
 }

 NO_SUPPORT_FOR_BRIDGE;

 StrCpy(name, sizeof(name), t->Name);
 FreeRpcEnumL3Table(t);
 Zero(t, sizeof(RPC_ENUM_L3TABLE));
 StrCpy(t->Name, sizeof(t->Name), name);

 sw = L3GetSw(c, t->Name);

 if (sw == ((void*)0))
 {
  ret = ERR_LAYER3_SW_NOT_FOUND;
 }
 else
 {
  UINT i;

  Lock(sw->lock);
  {
   t->NumItem = LIST_NUM(sw->TableList);
   t->Items = ZeroMalloc(sizeof(RPC_L3TABLE) * t->NumItem);

   for (i = 0;i < t->NumItem;i++)
   {
    L3TABLE *tbl = LIST_DATA(sw->TableList, i);
    RPC_L3TABLE *e = &t->Items[i];

    StrCpy(e->Name, sizeof(e->Name), name);
    e->NetworkAddress = tbl->NetworkAddress;
    e->SubnetMask = tbl->SubnetMask;
    e->GatewayAddress = tbl->GatewayAddress;
    e->Metric = tbl->Metric;
   }
  }
  Unlock(sw->lock);

  ReleaseL3Sw(sw);
 }

 return ret;
}
