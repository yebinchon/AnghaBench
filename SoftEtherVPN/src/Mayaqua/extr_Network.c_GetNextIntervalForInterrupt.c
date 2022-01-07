
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {int * TickList; } ;
typedef int LIST ;
typedef TYPE_1__ INTERRUPT_MANAGER ;


 int Add (int *,scalar_t__*) ;
 int Delete (int *,scalar_t__*) ;
 int Free (scalar_t__*) ;
 scalar_t__ INFINITE ;
 scalar_t__* LIST_DATA (int *,scalar_t__) ;
 int LIST_NUM (int *) ;
 int LockList (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 scalar_t__ Tick64 () ;
 int UnlockList (int *) ;

UINT GetNextIntervalForInterrupt(INTERRUPT_MANAGER *m)
{
 UINT ret = INFINITE;
 UINT i;
 LIST *o = ((void*)0);
 UINT64 now = Tick64();

 if (m == ((void*)0))
 {
  return 0;
 }

 LockList(m->TickList);
 {

  for (i = 0;i < LIST_NUM(m->TickList);i++)
  {
   UINT64 *v = LIST_DATA(m->TickList, i);

   if (now >= *v)
   {
    ret = 0;

    if (o == ((void*)0))
    {
     o = NewListFast(((void*)0));
    }

    Add(o, v);
   }
   else
   {
    break;
   }
  }

  for (i = 0;i < LIST_NUM(o);i++)
  {
   UINT64 *v = LIST_DATA(o, i);

   Free(v);

   Delete(m->TickList, v);
  }

  if (o != ((void*)0))
  {
   ReleaseList(o);
  }

  if (ret == INFINITE)
  {
   if (LIST_NUM(m->TickList) >= 1)
   {
    UINT64 *v = LIST_DATA(m->TickList, 0);

    ret = (UINT)(*v - now);
   }
  }
 }
 UnlockList(m->TickList);

 return ret;
}
