
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * x; int * issuer_x; } ;
typedef TYPE_1__ RPC_GET_ISSUER ;


 int FreeX (int *) ;

void CiFreeGetIssuer(RPC_GET_ISSUER *a)
{

 if (a == ((void*)0))
 {
  return;
 }

 if (a->issuer_x != ((void*)0))
 {
  FreeX(a->issuer_x);
 }
 if (a->x != ((void*)0))
 {
  FreeX(a->x);
 }
}
