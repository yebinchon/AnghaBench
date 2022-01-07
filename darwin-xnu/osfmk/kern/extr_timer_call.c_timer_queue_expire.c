
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int mpqueue_head_t ;


 int FALSE ;
 int timer_queue_expire_with_options (int *,int ,int ) ;

uint64_t
timer_queue_expire(
 mpqueue_head_t *queue,
 uint64_t deadline)
{
 return timer_queue_expire_with_options(queue, deadline, FALSE);
}
