
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;
typedef scalar_t__ UINT ;
typedef int LIST ;


 scalar_t__ CompareX (int *,int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;

bool IsXInCertList(LIST *o, X *x)
{
 UINT i;

 if (o == ((void*)0) || x == ((void*)0))
 {
  return 0;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  X *xx = LIST_DATA(o, i);

  if (CompareX(x, xx))
  {
   return 1;
  }
 }

 return 0;
}
