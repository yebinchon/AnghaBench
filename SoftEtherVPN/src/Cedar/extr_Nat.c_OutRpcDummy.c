
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int DummyValue; } ;
typedef TYPE_1__ RPC_DUMMY ;
typedef int PACK ;


 int PackAddInt (int *,char*,int ) ;

void OutRpcDummy(PACK *p, RPC_DUMMY *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "DummyValue", t->DummyValue);
}
