
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ClientCert; } ;
typedef TYPE_1__ SECURE_SIGN ;


 int FreeX (int ) ;

void FreeRpcSecureSign(SECURE_SIGN *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 FreeX(t->ClientCert);
}
