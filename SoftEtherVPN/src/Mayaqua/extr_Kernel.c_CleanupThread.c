
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Name; int PoolWaitList; int release_event; int init_finished_event; } ;
typedef TYPE_1__ THREAD ;


 int Free (TYPE_1__*) ;
 int ReleaseEvent (int ) ;
 int ReleaseList (int ) ;
 int current_num_thread ;

void CleanupThread(THREAD *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 ReleaseEvent(t->init_finished_event);
 ReleaseEvent(t->release_event);
 ReleaseList(t->PoolWaitList);

 if (t->Name != ((void*)0))
 {
  Free(t->Name);
 }

 Free(t);

 current_num_thread--;

}
