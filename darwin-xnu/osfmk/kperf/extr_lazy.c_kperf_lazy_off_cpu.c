
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_4__ {int reason; } ;


 int AST_SCHEDULING ;
 int kperf_lazy_cpu_sample (TYPE_1__*,int ,int ) ;

void
kperf_lazy_off_cpu(thread_t thread)
{

 if ((thread->reason & AST_SCHEDULING) != 0) {
  kperf_lazy_cpu_sample(thread, 0, 0);
    }
}
