
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int subject_name; int issuer_name; } ;
typedef TYPE_1__ X ;
typedef int K ;


 int CheckSignature (TYPE_1__*,int *) ;
 int CheckXDateNow (TYPE_1__*) ;
 int CompareName (int ,int ) ;
 int FreeK (int *) ;
 int * GetKFromX (TYPE_1__*) ;

bool CheckXEx(X *x, X *x_issuer, bool check_name, bool check_date)
{
 K *k;
 bool ret;

 if (x == ((void*)0) || x_issuer == ((void*)0))
 {
  return 0;
 }

 k = GetKFromX(x_issuer);
 if (k == ((void*)0))
 {
  return 0;
 }

 ret = CheckSignature(x, k);

 if (ret)
 {
  if (check_name)
  {
   if (CompareName(x->issuer_name, x_issuer->subject_name) == 0)
   {
    ret = 0;
   }
  }

  if (check_date)
  {
   if (CheckXDateNow(x_issuer) == 0)
   {
    ret = 0;
   }
  }
 }

 FreeK(k);

 return ret;
}
