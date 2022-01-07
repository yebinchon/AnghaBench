
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int Descrption; int Value; int Name; } ;
struct TYPE_6__ {int NumItem; TYPE_2__* Items; int HubName; } ;
typedef TYPE_1__ RPC_ADMIN_OPTION ;
typedef int PACK ;
typedef TYPE_2__ ADMIN_OPTION ;


 int PackGetIndexCount (int *,char*) ;
 int PackGetIntEx (int *,char*,size_t) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int PackGetUniStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_1__*,int) ;
 TYPE_2__* ZeroMalloc (int) ;

void InRpcAdminOption(RPC_ADMIN_OPTION *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ADMIN_OPTION));
 t->NumItem = PackGetIndexCount(p, "Name");
 t->Items = ZeroMalloc(sizeof(ADMIN_OPTION) * t->NumItem);

 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));

 for (i = 0;i < t->NumItem;i++)
 {
  ADMIN_OPTION *o = &t->Items[i];

  PackGetStrEx(p, "Name", o->Name, sizeof(o->Name), i);
  o->Value = PackGetIntEx(p, "Value", i);
  PackGetUniStrEx(p, "Descrption", o->Descrption, sizeof(o->Descrption), i);
 }
}
