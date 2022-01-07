
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_2__* thread_t ;
struct TYPE_4__ {scalar_t__* mth_counts; } ;
struct TYPE_5__ {TYPE_1__ t_monotonic; } ;


 size_t MT_CORE_CYCLES ;
 size_t MT_CORE_INSTRS ;
 int assert (int ) ;
 int mt_core_supported ;

void
mt_stackshot_thread(thread_t thread, uint64_t *instrs, uint64_t *cycles)
{
 assert(mt_core_supported);




 *instrs = 0;


 *cycles = thread->t_monotonic.mth_counts[MT_CORE_CYCLES];
}
