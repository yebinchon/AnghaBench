
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ sthread_t ;



uintptr_t sthread_get_thread_id(sthread_t *thread)
{
   if (!thread)
      return 0;
   return (uintptr_t)thread->id;
}
