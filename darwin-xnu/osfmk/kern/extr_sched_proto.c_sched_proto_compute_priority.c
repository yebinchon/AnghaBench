
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_3__ {int base_pri; } ;



__attribute__((used)) static int
sched_proto_compute_priority(thread_t thread)
{
 return thread->base_pri;
}
