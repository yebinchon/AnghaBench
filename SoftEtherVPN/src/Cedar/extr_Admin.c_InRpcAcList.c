
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {void* Priority; int SubnetMask; void* Masked; int IpAddress; void* Deny; void* Id; } ;
struct TYPE_8__ {int * o; int HubName; } ;
typedef TYPE_1__ RPC_AC_LIST ;
typedef int PACK ;
typedef int LIST ;
typedef TYPE_2__ AC ;


 int AddAc (int *,TYPE_2__*) ;
 int Free (TYPE_2__*) ;
 int * NewAcList () ;
 void* PackGetBoolEx (int *,char*,scalar_t__) ;
 scalar_t__ PackGetIndexCount (int *,char*) ;
 void* PackGetIntEx (int *,char*,scalar_t__) ;
 int PackGetIpEx (int *,char*,int *,scalar_t__) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;
 TYPE_2__* ZeroMalloc (int) ;

void InRpcAcList(RPC_AC_LIST *t, PACK *p)
{
 UINT i;
 LIST *o;
 UINT num;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_AC_LIST));
 o = NewAcList();

 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 num = PackGetIndexCount(p, "IpAddress");

 for (i = 0;i < num;i++)
 {
  AC *ac = ZeroMalloc(sizeof(AC));

  ac->Id = PackGetIntEx(p, "Id", i);
  ac->Deny = PackGetBoolEx(p, "Deny", i);
  PackGetIpEx(p, "IpAddress", &ac->IpAddress, i);
  ac->Masked = PackGetBoolEx(p, "Masked", i);

  if (ac->Masked)
  {
   PackGetIpEx(p, "SubnetMask", &ac->SubnetMask, i);
  }

  ac->Priority = PackGetIntEx(p, "Priority", i);

  AddAc(o, ac);

  Free(ac);
 }

 t->o = o;
}
