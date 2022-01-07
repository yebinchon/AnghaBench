
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Key; int Cert; } ;
typedef TYPE_1__ RPC_KEY_PAIR ;


 int FreeK (int ) ;
 int FreeX (int ) ;

void FreeRpcKeyPair(RPC_KEY_PAIR *t)
{
 FreeX(t->Cert);
 FreeK(t->Key);
}
