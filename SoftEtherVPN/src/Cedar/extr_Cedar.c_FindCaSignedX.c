
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int issuer_name; int subject_name; } ;
typedef TYPE_1__ X ;
typedef scalar_t__ UINT ;
typedef int LIST ;
typedef int K ;


 scalar_t__ CheckSignature (TYPE_1__*,int *) ;
 scalar_t__ CheckXDateNow (TYPE_1__*) ;
 TYPE_1__* CloneX (TYPE_1__*) ;
 scalar_t__ CompareName (int ,int ) ;
 scalar_t__ CompareX (TYPE_1__*,TYPE_1__*) ;
 int FreeK (int *) ;
 int * GetKFromX (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 int UnlockList (int *) ;

X *FindCaSignedX(LIST *o, X *x)
{
 X *ret;

 if (o == ((void*)0) || x == ((void*)0))
 {
  return ((void*)0);
 }

 ret = ((void*)0);

 LockList(o);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(o);i++)
  {
   X *ca = LIST_DATA(o, i);
   if (CheckXDateNow(ca))
   {
    if (CompareName(ca->subject_name, x->issuer_name))
    {
     K *k = GetKFromX(ca);
     if (k != ((void*)0))
     {
      if (CheckSignature(x, k))
      {
       ret = CloneX(ca);
      }
      FreeK(k);
     }
    }
    else if (CompareX(ca, x))
    {
     ret = CloneX(ca);
    }
   }

   if (ret != ((void*)0))
   {
    break;
   }
  }
 }
 UnlockList(o);

 return ret;
}
