
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mcpwm_cap2_in_num; int mcpwm_cap1_in_num; int mcpwm_cap0_in_num; int mcpwm_fault2_in_num; int mcpwm_fault1_in_num; int mcpwm_fault0_in_num; int mcpwm_sync2_in_num; int mcpwm_sync1_in_num; int mcpwm_sync0_in_num; int mcpwm2b_out_num; int mcpwm2a_out_num; int mcpwm1b_out_num; int mcpwm1a_out_num; int mcpwm0b_out_num; int mcpwm0a_out_num; } ;
typedef TYPE_1__ mcpwm_pin_config_t ;


 int GPIO_CAP0_IN ;
 int GPIO_CAP1_IN ;
 int GPIO_CAP2_IN ;
 int GPIO_FAULT0_IN ;
 int GPIO_FAULT1_IN ;
 int GPIO_FAULT2_IN ;
 int GPIO_PWM0A_OUT ;
 int GPIO_PWM0B_OUT ;
 int GPIO_PWM1A_OUT ;
 int GPIO_PWM1B_OUT ;
 int GPIO_PWM2A_OUT ;
 int GPIO_PWM2B_OUT ;
 int GPIO_SYNC0_IN ;
 int GPIO_SYNC1_IN ;
 int GPIO_SYNC2_IN ;
 int MCPWM0A ;
 int MCPWM0B ;
 int MCPWM1A ;
 int MCPWM1B ;
 int MCPWM2A ;
 int MCPWM2B ;
 int MCPWM_CAP_0 ;
 int MCPWM_CAP_1 ;
 int MCPWM_CAP_2 ;
 int MCPWM_FAULT_0 ;
 int MCPWM_FAULT_1 ;
 int MCPWM_FAULT_2 ;
 int MCPWM_SYNC_0 ;
 int MCPWM_SYNC_1 ;
 int MCPWM_SYNC_2 ;
 int MCPWM_UNIT_0 ;
 int gpio_pulldown_en (int ) ;
 int mcpwm_gpio_init (int ,int ,int ) ;
 int mcpwm_set_pin (int ,TYPE_1__*) ;
 int printf (char*) ;

__attribute__((used)) static void mcpwm_example_gpio_initialize(void)
{
    printf("initializing mcpwm gpio...\n");
    mcpwm_pin_config_t pin_config = {
        .mcpwm0a_out_num = GPIO_PWM0A_OUT,
        .mcpwm0b_out_num = GPIO_PWM0B_OUT,
        .mcpwm1a_out_num = GPIO_PWM1A_OUT,
        .mcpwm1b_out_num = GPIO_PWM1B_OUT,
        .mcpwm2a_out_num = GPIO_PWM2A_OUT,
        .mcpwm2b_out_num = GPIO_PWM2B_OUT,
        .mcpwm_sync0_in_num = GPIO_SYNC0_IN,
        .mcpwm_sync1_in_num = GPIO_SYNC1_IN,
        .mcpwm_sync2_in_num = GPIO_SYNC2_IN,
        .mcpwm_fault0_in_num = GPIO_FAULT0_IN,
        .mcpwm_fault1_in_num = GPIO_FAULT1_IN,
        .mcpwm_fault2_in_num = GPIO_FAULT2_IN,
        .mcpwm_cap0_in_num = GPIO_CAP0_IN,
        .mcpwm_cap1_in_num = GPIO_CAP1_IN,
        .mcpwm_cap2_in_num = GPIO_CAP2_IN
    };
    mcpwm_set_pin(MCPWM_UNIT_0, &pin_config);

    gpio_pulldown_en(GPIO_CAP0_IN);
    gpio_pulldown_en(GPIO_CAP1_IN);
    gpio_pulldown_en(GPIO_CAP2_IN);
    gpio_pulldown_en(GPIO_SYNC0_IN);
    gpio_pulldown_en(GPIO_SYNC1_IN);
    gpio_pulldown_en(GPIO_SYNC2_IN);
    gpio_pulldown_en(GPIO_FAULT0_IN);
    gpio_pulldown_en(GPIO_FAULT1_IN);
    gpio_pulldown_en(GPIO_FAULT2_IN);
}
