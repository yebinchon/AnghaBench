
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int portMAX_DELAY ;
 int vTaskDelay (int ) ;

__attribute__((used)) static void tsk_extern_del(void *param)
{
    vTaskDelay(portMAX_DELAY);
}
