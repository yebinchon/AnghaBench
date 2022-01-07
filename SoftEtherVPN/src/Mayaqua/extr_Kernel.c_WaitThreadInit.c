
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int init_finished_event; } ;
typedef TYPE_1__ THREAD ;


 int INFINITE ;
 int KS_INC (int ) ;
 int KS_WAITFORTHREAD_COUNT ;
 int Wait (int ,int ) ;

void WaitThreadInit(THREAD *t)
{

 if (t == ((void*)0))
 {
  return;
 }


 KS_INC(KS_WAITFORTHREAD_COUNT);


 Wait(t->init_finished_event, INFINITE);
}
