
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mcpwm_example_servo_control ;
 int printf (char*) ;
 int xTaskCreate (int ,char*,int,int *,int,int *) ;

void app_main(void)
{
    printf("Testing servo motor.......\n");
    xTaskCreate(mcpwm_example_servo_control, "mcpwm_example_servo_control", 4096, ((void*)0), 5, ((void*)0));
}
