
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Items; } ;
typedef TYPE_1__ RPC_ENUM_L3SW ;


 int Free (int ) ;

void FreeRpcEnumL3Sw(RPC_ENUM_L3SW *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 Free(t->Items);
}
