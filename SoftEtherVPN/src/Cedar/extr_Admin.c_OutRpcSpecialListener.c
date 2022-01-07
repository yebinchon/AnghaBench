
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int VpnOverDnsListener; int VpnOverIcmpListener; } ;
typedef TYPE_1__ RPC_SPECIAL_LISTENER ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;

void OutRpcSpecialListener(PACK *p, RPC_SPECIAL_LISTENER *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddBool(p, "VpnOverIcmpListener", t->VpnOverIcmpListener);
 PackAddBool(p, "VpnOverDnsListener", t->VpnOverDnsListener);
}
