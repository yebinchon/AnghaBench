
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {int Descrption; int Value; int Name; } ;
struct TYPE_4__ {size_t NumItem; TYPE_2__* Items; int HubName; } ;
typedef TYPE_1__ RPC_ADMIN_OPTION ;
typedef int PACK ;
typedef TYPE_2__ ADMIN_OPTION ;


 int PackAddInt (int *,char*,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackAddUniStrEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcAdminOption(PACK *p, RPC_ADMIN_OPTION *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "NumItem", t->NumItem);

 PackAddStr(p, "HubName", t->HubName);

 PackSetCurrentJsonGroupName(p, "AdminOptionList");
 for (i = 0;i < t->NumItem;i++)
 {
  ADMIN_OPTION *o = &t->Items[i];

  PackAddStrEx(p, "Name", o->Name, i, t->NumItem);
  PackAddIntEx(p, "Value", o->Value, i, t->NumItem);
  PackAddUniStrEx(p, "Descrption", o->Descrption, i, t->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
