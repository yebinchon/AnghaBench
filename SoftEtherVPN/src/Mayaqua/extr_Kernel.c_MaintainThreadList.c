
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ Stopped; } ;
typedef TYPE_1__ THREAD ;
typedef int LIST ;


 int Add (int *,TYPE_1__*) ;
 int Delete (int *,TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 int ReleaseThread (TYPE_1__*) ;
 int UnlockList (int *) ;

void MaintainThreadList(LIST *o)
{
 UINT i;
 LIST *delete_list = ((void*)0);

 if (o == ((void*)0))
 {
  return;
 }

 LockList(o);
 {
  for (i = 0;i < LIST_NUM(o);i++)
  {
   THREAD *t = LIST_DATA(o, i);

   if (t->Stopped)
   {
    if (delete_list == ((void*)0))
    {
     delete_list = NewListFast(((void*)0));
    }

    Add(delete_list, t);
   }
  }

  if (delete_list != ((void*)0))
  {
   for (i = 0;i < LIST_NUM(delete_list);i++)
   {
    THREAD *t = LIST_DATA(delete_list, i);

    ReleaseThread(t);

    Delete(o, t);
   }

   ReleaseList(delete_list);
  }
 }
 UnlockList(o);
}
