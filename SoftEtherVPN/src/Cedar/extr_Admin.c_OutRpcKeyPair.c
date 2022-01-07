
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Flag1; int Key; int Cert; } ;
typedef TYPE_1__ RPC_KEY_PAIR ;
typedef int PACK ;


 int PackAddInt (int *,char*,int ) ;
 int PackAddK (int *,char*,int ) ;
 int PackAddX (int *,char*,int ) ;

void OutRpcKeyPair(PACK *p, RPC_KEY_PAIR *t)
{

 if (p == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 PackAddX(p, "Cert", t->Cert);
 PackAddK(p, "Key", t->Key);
 PackAddInt(p, "Flag1", t->Flag1);
}
