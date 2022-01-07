
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int has_reset; struct TYPE_5__* next; int task_handle; } ;
typedef TYPE_1__ twdt_task_t ;
typedef int TaskHandle_t ;
struct TYPE_6__ {TYPE_1__* list; } ;


 int ASSERT_EXIT_CRIT_RETURN (int ,int ) ;
 int VOID_RETURN ;
 TYPE_1__* calloc (int,int) ;
 TYPE_1__* find_task_in_twdt_list (int ,int*) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int reset_hw_timer () ;
 TYPE_2__* twdt_config ;
 int twdt_spinlock ;
 int xTaskGetCurrentTaskHandle () ;

void esp_task_wdt_feed(void)
{
    portENTER_CRITICAL(&twdt_spinlock);

    ASSERT_EXIT_CRIT_RETURN((twdt_config != ((void*)0)), VOID_RETURN);


    TaskHandle_t handle = xTaskGetCurrentTaskHandle();
    bool all_reset;
    twdt_task_t *target_task = find_task_in_twdt_list(handle, &all_reset);


    if(target_task != ((void*)0)){
        target_task->has_reset = 1;
        if(all_reset){
            reset_hw_timer();
        }
        portEXIT_CRITICAL(&twdt_spinlock);
        return;
    }


    target_task = calloc(1, sizeof(twdt_task_t));
    ASSERT_EXIT_CRIT_RETURN((target_task != ((void*)0)), VOID_RETURN);
    target_task->task_handle = handle;
    target_task->has_reset = 1;
    target_task->next = ((void*)0);

    if (twdt_config->list == ((void*)0)) {
        twdt_config->list = target_task;
    } else {
        twdt_task_t *task;
        for (task = twdt_config->list; task->next != ((void*)0); task = task->next){
            ;
        }
        task->next = target_task;
    }

    portEXIT_CRITICAL(&twdt_spinlock);
}
