
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_2__* thread_t ;
typedef int boolean_t ;
struct TYPE_5__ {int * mth_counts; } ;
struct TYPE_6__ {TYPE_1__ t_monotonic; } ;


 int FALSE ;
 size_t MT_CORE_INSTRS ;
 TYPE_2__* current_thread () ;
 int ml_set_interrupts_enabled (int ) ;
 int mt_core_supported ;
 int mt_update_thread (TYPE_2__*) ;

uint64_t
mt_cur_thread_instrs(void)
{
 return 0;

}
