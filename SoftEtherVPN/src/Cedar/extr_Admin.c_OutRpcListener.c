
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Enable; int Port; } ;
typedef TYPE_1__ RPC_LISTENER ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddInt (int *,char*,int ) ;

void OutRpcListener(PACK *p, RPC_LISTENER *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "Port", t->Port);
 PackAddBool(p, "Enable", t->Enable);
}
