
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int IntValue; } ;
typedef TYPE_1__ RPC_INT ;
typedef int PACK ;


 int PackGetInt (int *,char*) ;
 int Zero (TYPE_1__*,int) ;

void InRpcInt(RPC_INT *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_INT));
 t->IntValue = PackGetInt(p, "IntValue");
}
