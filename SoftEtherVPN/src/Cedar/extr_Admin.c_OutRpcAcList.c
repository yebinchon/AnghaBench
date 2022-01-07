
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {int Priority; int SubnetMask; int Masked; int IpAddress; int Deny; int Id; } ;
struct TYPE_5__ {int HubName; int * o; } ;
typedef TYPE_1__ RPC_AC_LIST ;
typedef int PACK ;
typedef int LIST ;
typedef TYPE_2__ AC ;


 TYPE_2__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int PackAddBoolEx (int *,char*,int ,scalar_t__,scalar_t__) ;
 int PackAddInt (int *,char*,scalar_t__) ;
 int PackAddIntEx (int *,char*,int ,scalar_t__,scalar_t__) ;
 int PackAddIpEx (int *,char*,int *,scalar_t__,scalar_t__) ;
 int PackAddStr (int *,char*,int ) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcAcList(PACK *p, RPC_AC_LIST *t)
{
 UINT i, num;
 LIST *o;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 o = t->o;
 num = LIST_NUM(o);

 PackAddInt(p, "NumItem", num);

 PackAddStr(p, "HubName", t->HubName);

 PackSetCurrentJsonGroupName(p, "ACList");
 for (i = 0;i < num;i++)
 {
  AC *ac = LIST_DATA(o, i);

  PackAddIntEx(p, "Id", ac->Id, i, num);
  PackAddBoolEx(p, "Deny", ac->Deny, i, num);
  PackAddIpEx(p, "IpAddress", &ac->IpAddress, i, num);
  PackAddBoolEx(p, "Masked", ac->Masked, i, num);

  PackAddIpEx(p, "SubnetMask", &ac->SubnetMask, i, num);

  PackAddIntEx(p, "Priority", ac->Priority, i, num);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
