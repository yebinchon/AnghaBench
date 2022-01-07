
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Enable; int Port; } ;
typedef TYPE_1__ RPC_LISTENER ;
typedef int PACK ;


 int PackGetBool (int *,char*) ;
 int PackGetInt (int *,char*) ;
 int Zero (TYPE_1__*,int) ;

void InRpcListener(RPC_LISTENER *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_LISTENER));
 t->Port = PackGetInt(p, "Port");
 t->Enable = PackGetBool(p, "Enable");
}
