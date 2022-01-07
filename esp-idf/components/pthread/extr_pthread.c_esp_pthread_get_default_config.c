
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inherit_cfg; int pin_to_core; int * thread_name; int prio; int stack_size; } ;
typedef TYPE_1__ esp_pthread_cfg_t ;


 int CONFIG_PTHREAD_TASK_PRIO_DEFAULT ;
 int CONFIG_PTHREAD_TASK_STACK_SIZE_DEFAULT ;
 int get_default_pthread_core () ;

esp_pthread_cfg_t esp_pthread_get_default_config(void)
{
    esp_pthread_cfg_t cfg = {
        .stack_size = CONFIG_PTHREAD_TASK_STACK_SIZE_DEFAULT,
        .prio = CONFIG_PTHREAD_TASK_PRIO_DEFAULT,
        .inherit_cfg = 0,
        .thread_name = ((void*)0),
        .pin_to_core = get_default_pthread_core()
    };

    return cfg;
}
