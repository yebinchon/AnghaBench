
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int issuer_name; int subject_name; } ;
typedef TYPE_1__ X ;
typedef scalar_t__ UINT ;
typedef int LIST ;
typedef int K ;


 scalar_t__ CheckSignature (TYPE_1__*,int *) ;
 scalar_t__ CheckXDateNow (TYPE_1__*) ;
 scalar_t__ CompareName (int ,int ) ;
 scalar_t__ CompareX (TYPE_1__*,TYPE_1__*) ;
 int FreeK (int *) ;
 int * GetKFromX (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;

X *GetIssuerFromList(LIST *cert_list, X *cert)
{
 UINT i;
 X *ret = ((void*)0);

 if (cert_list == ((void*)0) || cert == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(cert_list);i++)
 {
  X *x = LIST_DATA(cert_list, i);

  if (CheckXDateNow(x))
  {
   if (CompareName(x->subject_name, cert->issuer_name))
   {

    K *k = GetKFromX(x);

    if (k != ((void*)0))
    {

     if (CheckSignature(cert, k))
     {
      ret = x;
     }
     FreeK(k);
    }
   }
  }
  if (CompareX(x, cert))
  {

   ret = x;
  }
 }

 return ret;
}
