
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SubnetMask; int IpAddress; int HubName; int Name; } ;
typedef TYPE_1__ RPC_L3IF ;
typedef int PACK ;


 int PackAddIp32 (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcL3If(PACK *p, RPC_L3IF *t)
{

 if (p == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "Name", t->Name);
 PackAddStr(p, "HubName", t->HubName);
 PackAddIp32(p, "IpAddress", t->IpAddress);
 PackAddIp32(p, "SubnetMask", t->SubnetMask);
}
