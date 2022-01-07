
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IntValue; } ;
typedef TYPE_1__ RPC_INT ;
typedef int PACK ;


 int PackAddInt (int *,char*,int ) ;

void OutRpcInt(PACK *p, RPC_INT *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "IntValue", t->IntValue);
}
