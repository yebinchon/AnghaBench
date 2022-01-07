
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Crl; } ;
typedef TYPE_1__ RPC_CRL ;


 int FreeCrl (int ) ;

void FreeRpcCrl(RPC_CRL *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 FreeCrl(t->Crl);
}
