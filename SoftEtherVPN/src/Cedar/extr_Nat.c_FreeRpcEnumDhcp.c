
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Items; } ;
typedef TYPE_1__ RPC_ENUM_DHCP ;


 int Free (int ) ;

void FreeRpcEnumDhcp(RPC_ENUM_DHCP *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 Free(t->Items);
}
