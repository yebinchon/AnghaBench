
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* VpnOverDnsListener; void* VpnOverIcmpListener; } ;
typedef TYPE_1__ RPC_SPECIAL_LISTENER ;
typedef int PACK ;


 void* PackGetBool (int *,char*) ;
 int Zero (TYPE_1__*,int) ;

void InRpcSpecialListener(RPC_SPECIAL_LISTENER *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_SPECIAL_LISTENER));

 t->VpnOverIcmpListener = PackGetBool(p, "VpnOverIcmpListener");
 t->VpnOverDnsListener = PackGetBool(p, "VpnOverDnsListener");
}
