
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int X ;
struct TYPE_9__ {TYPE_1__* Cedar; } ;
struct TYPE_8__ {int * x; int * issuer_x; } ;
struct TYPE_7__ {int CaList; } ;
typedef TYPE_2__ RPC_GET_ISSUER ;
typedef TYPE_3__ CLIENT ;


 int CiSetError (TYPE_3__*,int ) ;
 int ERR_OBJECT_NOT_FOUND ;
 int * FindCaSignedX (int ,int *) ;
 int FreeX (int *) ;

bool CtGetIssuer(CLIENT *c, RPC_GET_ISSUER *a)
{
 X *x;

 if (c == ((void*)0) || a == ((void*)0))
 {
  return 0;
 }

 x = FindCaSignedX(c->Cedar->CaList, a->x);
 if (x == ((void*)0))
 {
  CiSetError(c, ERR_OBJECT_NOT_FOUND);;
  return 0;
 }
 else
 {
  a->issuer_x = x;
  if (a->x != ((void*)0))
  {
   FreeX(a->x);
   a->x = ((void*)0);
  }
  return 1;
 }
}
