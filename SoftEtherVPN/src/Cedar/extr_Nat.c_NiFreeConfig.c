
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int AdminK; int AdminX; int ClientAuth; int ClientOption; int * CfgRw; } ;
typedef TYPE_1__ NAT ;


 int CiFreeClientAuth (int ) ;
 int Free (int ) ;
 int FreeCfgRw (int *) ;
 int FreeK (int ) ;
 int FreeX (int ) ;
 int NiWriteConfig (TYPE_1__*) ;

void NiFreeConfig(NAT *n)
{

 if (n == ((void*)0))
 {
  return;
 }


 NiWriteConfig(n);


 FreeCfgRw(n->CfgRw);
 n->CfgRw = ((void*)0);

 Free(n->ClientOption);
 CiFreeClientAuth(n->ClientAuth);

 FreeX(n->AdminX);
 FreeK(n->AdminK);
}
