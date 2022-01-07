
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int wait_queue; } ;
typedef TYPE_1__ lwp_mutex ;


 int __lwp_threadqueue_flush (int *,int ) ;

void __lwp_mutex_flush(lwp_mutex *mutex,u32 status)
{
 __lwp_threadqueue_flush(&mutex->wait_queue,status);
}
