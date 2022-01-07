
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int init_finished_event; } ;
typedef TYPE_1__ THREAD ;


 int Free (TYPE_1__*) ;
 int KS_FREETHREAD_COUNT ;
 int KS_INC (int ) ;
 int OSFreeThread (TYPE_1__*) ;
 int ReleaseEvent (int ) ;

void CleanupThreadInternal(THREAD *t)
{

 if (t == ((void*)0))
 {
  return;
 }


 OSFreeThread(t);


 ReleaseEvent(t->init_finished_event);

 Free(t);


 KS_INC(KS_FREETHREAD_COUNT);
}
