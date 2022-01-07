
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int has_reset; struct TYPE_4__* next; } ;
typedef TYPE_1__ twdt_task_t ;
struct TYPE_6__ {int wdt_feed; scalar_t__ wdt_wprotect; } ;
struct TYPE_5__ {TYPE_1__* list; } ;


 TYPE_3__ TIMERG0 ;
 scalar_t__ TIMG_WDT_WKEY_VALUE ;
 TYPE_2__* twdt_config ;

__attribute__((used)) static void reset_hw_timer(void)
{

    TIMERG0.wdt_wprotect=TIMG_WDT_WKEY_VALUE;
    TIMERG0.wdt_feed=1;
    TIMERG0.wdt_wprotect=0;

    for (twdt_task_t *task = twdt_config->list; task != ((void*)0); task = task->next){
        task->has_reset=0;
    }
}
