
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * run_queue_t ;
typedef TYPE_1__* processor_t ;
struct TYPE_3__ {int runq; } ;



__attribute__((used)) __attribute__((always_inline))
static inline run_queue_t
multiq_bound_runq(processor_t processor)
{
 return &processor->runq;
}
