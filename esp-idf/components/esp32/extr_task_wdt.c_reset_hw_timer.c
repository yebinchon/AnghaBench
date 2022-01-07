
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int has_reset; struct TYPE_3__* next; } ;
typedef TYPE_1__ twdt_task_t ;
struct TYPE_4__ {TYPE_1__* list; } ;


 int TIMERG0 ;
 int timer_ll_wdt_feed (int *) ;
 int timer_ll_wdt_set_protect (int *,int) ;
 TYPE_2__* twdt_config ;

__attribute__((used)) static void reset_hw_timer(void)
{

    timer_ll_wdt_set_protect(&TIMERG0, 0);
    timer_ll_wdt_feed(&TIMERG0);
    timer_ll_wdt_set_protect(&TIMERG0, 1);

    for (twdt_task_t *task = twdt_config->list; task != ((void*)0); task = task->next){
        task->has_reset=0;
    }
}
