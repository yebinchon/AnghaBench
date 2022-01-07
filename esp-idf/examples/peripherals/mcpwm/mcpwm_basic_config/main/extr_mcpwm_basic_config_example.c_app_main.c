
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int capture ;


 int cap_queue ;
 int disp_captured_signal ;
 int gpio_test_signal ;
 int mcpwm_example_config ;
 int printf (char*) ;
 int xQueueCreate (int,int) ;
 int xTaskCreate (int ,char*,int,int *,int,int *) ;

void app_main(void)
{
    printf("Testing MCPWM...\n");
    cap_queue = xQueueCreate(1, sizeof(capture));
    xTaskCreate(disp_captured_signal, "mcpwm_config", 4096, ((void*)0), 5, ((void*)0));
    xTaskCreate(gpio_test_signal, "gpio_test_signal", 4096, ((void*)0), 5, ((void*)0));
    xTaskCreate(mcpwm_example_config, "mcpwm_example_config", 4096, ((void*)0), 5, ((void*)0));
}
