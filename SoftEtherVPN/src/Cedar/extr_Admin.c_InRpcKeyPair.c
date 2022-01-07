
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Flag1; int Key; int Cert; } ;
typedef TYPE_1__ RPC_KEY_PAIR ;
typedef int PACK ;


 int PackGetInt (int *,char*) ;
 int PackGetK (int *,char*) ;
 int PackGetX (int *,char*) ;

void InRpcKeyPair(RPC_KEY_PAIR *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 t->Cert = PackGetX(p, "Cert");
 t->Key = PackGetK(p, "Key");
 t->Flag1 = PackGetInt(p, "Flag1");
}
