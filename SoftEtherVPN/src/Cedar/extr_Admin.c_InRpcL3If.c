
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* SubnetMask; void* IpAddress; int HubName; int Name; } ;
typedef TYPE_1__ RPC_L3IF ;
typedef int PACK ;


 void* PackGetIp32 (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcL3If(RPC_L3IF *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_L3IF));
 PackGetStr(p, "Name", t->Name, sizeof(t->Name));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 t->IpAddress = PackGetIp32(p, "IpAddress");
 t->SubnetMask = PackGetIp32(p, "SubnetMask");
}
