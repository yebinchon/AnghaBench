
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int task_handle; int has_reset; struct TYPE_3__* next; } ;
typedef TYPE_1__ twdt_task_t ;
struct TYPE_4__ {scalar_t__ panic; TYPE_1__* list; } ;


 int ASSERT_EXIT_CRIT_RETURN (int ,int ) ;
 char* DRAM_STR (char*) ;
 int ESP_EARLY_LOGE (int ,char*,...) ;
 int ESP_RST_TASK_WDT ;
 int TAG ;
 int TIMERG0 ;
 int TIMER_GROUP_0 ;
 int TIMER_INTR_WDT ;
 int VOID_RETURN ;
 int abort () ;
 int esp_reset_reason_set_hint (int ) ;
 int esp_task_wdt_isr_user_handler () ;
 int pcTaskGetTaskName (int ) ;
 int portENTER_CRITICAL_ISR (int *) ;
 int portEXIT_CRITICAL_ISR (int *) ;
 int portNUM_PROCESSORS ;
 int timer_group_clr_intr_sta_in_isr (int ,int ) ;
 int timer_ll_wdt_feed (int *) ;
 int timer_ll_wdt_set_protect (int *,int) ;
 scalar_t__ tskNO_AFFINITY ;
 TYPE_2__* twdt_config ;
 int twdt_spinlock ;
 scalar_t__ xTaskGetAffinity (int ) ;
 int xTaskGetCurrentTaskHandleForCPU (int) ;

__attribute__((used)) static void task_wdt_isr(void *arg)
{
    portENTER_CRITICAL_ISR(&twdt_spinlock);
    twdt_task_t *twdttask;
    const char *cpu;

    timer_ll_wdt_set_protect(&TIMERG0, 0);
    timer_ll_wdt_feed(&TIMERG0);
    timer_ll_wdt_set_protect(&TIMERG0, 1);

    timer_group_clr_intr_sta_in_isr(TIMER_GROUP_0, TIMER_INTR_WDT);






    ASSERT_EXIT_CRIT_RETURN((twdt_config->list != ((void*)0)), VOID_RETURN);


    ESP_EARLY_LOGE(TAG, "Task watchdog got triggered. The following tasks did not reset the watchdog in time:");
    for (twdttask=twdt_config->list; twdttask!=((void*)0); twdttask=twdttask->next) {
        if (!twdttask->has_reset) {
            cpu=xTaskGetAffinity(twdttask->task_handle)==0?DRAM_STR("CPU 0"):DRAM_STR("CPU 1");
            if (xTaskGetAffinity(twdttask->task_handle)==tskNO_AFFINITY) cpu=DRAM_STR("CPU 0/1");
            ESP_EARLY_LOGE(TAG, " - %s (%s)", pcTaskGetTaskName(twdttask->task_handle), cpu);
        }
    }
    ESP_EARLY_LOGE(TAG, "%s", DRAM_STR("Tasks currently running:"));
    for (int x=0; x<portNUM_PROCESSORS; x++) {
        ESP_EARLY_LOGE(TAG, "CPU %d: %s", x, pcTaskGetTaskName(xTaskGetCurrentTaskHandleForCPU(x)));
    }

    esp_task_wdt_isr_user_handler();
    if (twdt_config->panic){
        ESP_EARLY_LOGE(TAG, "Aborting.");
        portEXIT_CRITICAL_ISR(&twdt_spinlock);
        esp_reset_reason_set_hint(ESP_RST_TASK_WDT);
        abort();
    }

    portEXIT_CRITICAL_ISR(&twdt_spinlock);
}
