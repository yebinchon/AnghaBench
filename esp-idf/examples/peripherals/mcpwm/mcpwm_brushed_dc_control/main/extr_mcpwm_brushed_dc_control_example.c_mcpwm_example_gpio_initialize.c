
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_PWM0A_OUT ;
 int GPIO_PWM0B_OUT ;
 int MCPWM0A ;
 int MCPWM0B ;
 int MCPWM_UNIT_0 ;
 int mcpwm_gpio_init (int ,int ,int ) ;
 int printf (char*) ;

__attribute__((used)) static void mcpwm_example_gpio_initialize(void)
{
    printf("initializing mcpwm gpio...\n");
    mcpwm_gpio_init(MCPWM_UNIT_0, MCPWM0A, GPIO_PWM0A_OUT);
    mcpwm_gpio_init(MCPWM_UNIT_0, MCPWM0B, GPIO_PWM0B_OUT);
}
