
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumItem; TYPE_1__* Items; int Name; } ;
struct TYPE_4__ {int SubnetMask; int IpAddress; int HubName; } ;
typedef TYPE_1__ RPC_L3IF ;
typedef TYPE_2__ RPC_ENUM_L3IF ;
typedef int PACK ;


 int PackAddInt (int *,char*,size_t) ;
 int PackAddIp32Ex (int *,char*,int ,size_t,size_t) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumL3If(PACK *p, RPC_ENUM_L3IF *t)
{
 UINT i;

 if (p == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "NumItem", t->NumItem);
 PackAddStr(p, "Name", t->Name);

 PackSetCurrentJsonGroupName(p, "L3IFList");
 for (i = 0;i < t->NumItem;i++)
 {
  RPC_L3IF *f = &t->Items[i];

  PackAddStrEx(p, "HubName", f->HubName, i, t->NumItem);
  PackAddIp32Ex(p, "IpAddress", f->IpAddress, i, t->NumItem);
  PackAddIp32Ex(p, "SubnetMask", f->SubnetMask, i, t->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
