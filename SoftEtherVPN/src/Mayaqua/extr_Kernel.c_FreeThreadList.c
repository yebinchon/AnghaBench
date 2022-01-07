
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int THREAD ;
typedef int LIST ;


 int DeleteAll (int *) ;
 int INFINITE ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 int ReleaseList (int *) ;
 int ReleaseThread (int *) ;
 int UnlockList (int *) ;
 int WaitThread (int *,int ) ;

void FreeThreadList(LIST *o)
{
 UINT i;

 if (o == ((void*)0))
 {
  return;
 }

 LockList(o);
 {
  for (i = 0;i < LIST_NUM(o);i++)
  {
   THREAD *t = LIST_DATA(o, i);

   WaitThread(t, INFINITE);

   ReleaseThread(t);
  }

  DeleteAll(o);
 }
 UnlockList(o);

 ReleaseList(o);
}
