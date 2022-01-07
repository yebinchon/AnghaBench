
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X ;
struct TYPE_3__ {int CaList; } ;
typedef TYPE_1__ CEDAR ;


 int * FindCaSignedX (int ,int *) ;
 int FreeX (int *) ;

bool CheckSignatureByCa(CEDAR *cedar, X *x)
{
 X *ca;

 if (cedar == ((void*)0) || x == ((void*)0))
 {
  return 0;
 }


 ca = FindCaSignedX(cedar->CaList, x);
 if (ca == ((void*)0))
 {

  return 0;
 }


 FreeX(ca);
 return 1;
}
