
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_task_wdt_add (int ) ;
 int esp_task_wdt_init (int,int) ;
 int setup_values () ;
 int xTaskGetIdleTaskHandleForCPU (int ) ;

__attribute__((used)) static void do_task_wdt(void)
{
    setup_values();
    esp_task_wdt_init(1, 1);
    esp_task_wdt_add(xTaskGetIdleTaskHandleForCPU(0));
    while(1);
}
