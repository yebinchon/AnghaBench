
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpqueue_head_t ;


 int DBG (char*,int *) ;
 int mpqueue_init (int *,int *,int *) ;
 int timer_call_lck_attr ;
 int timer_call_lck_grp ;

void
timer_call_queue_init(mpqueue_head_t *queue)
{
 DBG("timer_call_queue_init(%p)\n", queue);
 mpqueue_init(queue, &timer_call_lck_grp, &timer_call_lck_attr);
}
