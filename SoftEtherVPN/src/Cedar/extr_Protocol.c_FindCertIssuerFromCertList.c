
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ root_cert; } ;
typedef TYPE_1__ X ;
typedef scalar_t__ UINT ;
typedef int LIST ;


 scalar_t__ CheckXEx (TYPE_1__*,TYPE_1__*,int,int) ;
 int CompareX (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;

X *FindCertIssuerFromCertList(LIST *o, X *x)
{
 UINT i;

 if (o == ((void*)0) || x == ((void*)0))
 {
  return ((void*)0);
 }

 if (x->root_cert)
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  X *xx = LIST_DATA(o, i);

  if (CheckXEx(x, xx, 1, 1))
  {
   if (CompareX(x, xx) == 0)
   {
    return xx;
   }
  }
 }

 return ((void*)0);
}
