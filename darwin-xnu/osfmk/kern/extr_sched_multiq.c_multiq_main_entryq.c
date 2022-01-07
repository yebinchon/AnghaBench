
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* processor_t ;
typedef int entry_queue_t ;
struct TYPE_5__ {TYPE_1__* processor_set; } ;
struct TYPE_4__ {int pset_runq; } ;



__attribute__((used)) __attribute__((always_inline))
static inline entry_queue_t
multiq_main_entryq(processor_t processor)
{
 return (entry_queue_t)&processor->processor_set->pset_runq;
}
