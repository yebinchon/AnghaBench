
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mcpwm_example_brushed_motor_control ;
 int printf (char*) ;
 int xTaskCreate (int ,char*,int,int *,int,int *) ;

void app_main(void)
{
    printf("Testing brushed motor...\n");
    xTaskCreate(mcpwm_example_brushed_motor_control, "mcpwm_examlpe_brushed_motor_control", 4096, ((void*)0), 5, ((void*)0));
}
