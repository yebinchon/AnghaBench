
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int init_finished_event; } ;
typedef TYPE_1__ THREAD ;


 int Set (int ) ;

void NoticeThreadInit(THREAD *t)
{

 if (t == ((void*)0))
 {
  return;
 }


 Set(t->init_finished_event);
}
