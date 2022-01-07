
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Sessions; } ;
typedef TYPE_1__ RPC_ENUM_SESSION ;


 int Free (int ) ;

void FreeRpcEnumSession(RPC_ENUM_SESSION *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 Free(t->Sessions);
}
