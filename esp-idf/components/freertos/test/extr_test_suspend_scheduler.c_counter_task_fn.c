
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int counter; int trigger_sem; } ;
typedef TYPE_1__ counter_config_t ;


 int portMAX_DELAY ;
 int printf (char*) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void counter_task_fn(void *vp_config)
{
    counter_config_t *config = (counter_config_t *)vp_config;
    printf("counter_task running...\n");
    while(1) {
        xSemaphoreTake(config->trigger_sem, portMAX_DELAY);
        config->counter++;
    }
}
