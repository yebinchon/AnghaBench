
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int PACK ;
typedef int LIST ;
typedef int ACCESS ;


 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 int SiAccessToPack (int *,int *,scalar_t__,scalar_t__) ;
 int UnlockList (int *) ;

void SiAccessListToPack(PACK *p, LIST *o)
{

 if (p == ((void*)0) || o == ((void*)0))
 {
  return;
 }

 LockList(o);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(o);i++)
  {
   ACCESS *a = LIST_DATA(o, i);
   SiAccessToPack(p, a, i, LIST_NUM(o));
  }
 }
 UnlockList(o);
}
