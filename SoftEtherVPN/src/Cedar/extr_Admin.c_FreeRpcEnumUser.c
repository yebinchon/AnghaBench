
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Users; } ;
typedef TYPE_1__ RPC_ENUM_USER ;


 int Free (int ) ;

void FreeRpcEnumUser(RPC_ENUM_USER *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 Free(t->Users);
}
