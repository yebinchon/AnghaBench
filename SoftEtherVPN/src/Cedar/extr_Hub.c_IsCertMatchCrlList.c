
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;
typedef scalar_t__ UINT ;
typedef int LIST ;
typedef int CRL ;


 scalar_t__ IsCertMatchCrl (int *,int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;

bool IsCertMatchCrlList(X *x, LIST *o)
{
 UINT i;

 if (x == ((void*)0) || o == ((void*)0))
 {
  return 0;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  CRL *crl = LIST_DATA(o, i);

  if (IsCertMatchCrl(x, crl))
  {
   return 1;
  }
 }

 return 0;
}
