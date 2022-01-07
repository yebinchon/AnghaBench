
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int frequency; double cmpr_a; double cmpr_b; void* duty_mode; void* counter_mode; } ;
typedef TYPE_2__ mcpwm_config_t ;
struct TYPE_9__ {int carrier_period; int carrier_duty; int pulse_width_in_os; int carrier_ivt_mode; int carrier_os_mode; } ;
typedef TYPE_3__ mcpwm_carrier_config_t ;
struct TYPE_7__ {int val; } ;
struct TYPE_10__ {TYPE_1__ int_ena; } ;


 int CAP0_INT_EN ;
 int CAP1_INT_EN ;
 int CAP2_INT_EN ;
 int ESP_INTR_FLAG_IRAM ;
 TYPE_6__** MCPWM ;
 int MCPWM_ACTIVE_RED_FED_FROM_PWMXA ;
 int MCPWM_BYPASS_FED ;
 int MCPWM_BYPASS_RED ;
 int MCPWM_CARRIER_OUT_IVT_EN ;
 void* MCPWM_DUTY_MODE_0 ;
 void* MCPWM_DUTY_MODE_1 ;
 int MCPWM_FORCE_MCPWMXA_HIGH ;
 int MCPWM_FORCE_MCPWMXA_LOW ;
 int MCPWM_FORCE_MCPWMXB_HIGH ;
 int MCPWM_FORCE_MCPWMXB_LOW ;
 int MCPWM_HIGH_LEVEL_TGR ;
 int MCPWM_ONESHOT_MODE_EN ;
 int MCPWM_POS_EDGE ;
 int MCPWM_SELECT_CAP0 ;
 int MCPWM_SELECT_CAP1 ;
 int MCPWM_SELECT_CAP2 ;
 int MCPWM_SELECT_F0 ;
 int MCPWM_SELECT_F1 ;
 int MCPWM_SELECT_F2 ;
 int MCPWM_SELECT_SYNC0 ;
 int MCPWM_TIMER_0 ;
 int MCPWM_TIMER_1 ;
 int MCPWM_TIMER_2 ;
 size_t MCPWM_UNIT_0 ;
 void* MCPWM_UP_COUNTER ;
 void* MCPWM_UP_DOWN_COUNTER ;
 int isr_handler ;
 int mcpwm_capture_enable (size_t,int ,int ,int ) ;
 int mcpwm_carrier_init (size_t,int ,TYPE_3__*) ;
 int mcpwm_deadtime_enable (size_t,int ,int ,int,int) ;
 int mcpwm_example_gpio_initialize () ;
 int mcpwm_fault_init (size_t,int ,int ) ;
 int mcpwm_fault_set_oneshot_mode (size_t,int ,int ,int ,int ) ;
 int mcpwm_init (size_t,int ,TYPE_2__*) ;
 int mcpwm_isr_register (size_t,int ,int *,int ,int *) ;
 int mcpwm_sync_enable (size_t,int ,int ,int) ;
 int printf (char*) ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void mcpwm_example_config(void *arg)
{

    mcpwm_example_gpio_initialize();


    printf("Configuring Initial Parameters of mcpwm...\n");
    mcpwm_config_t pwm_config;
    pwm_config.frequency = 1000;
    pwm_config.cmpr_a = 60.0;
    pwm_config.cmpr_b = 50.0;
    pwm_config.counter_mode = MCPWM_UP_COUNTER;
    pwm_config.duty_mode = MCPWM_DUTY_MODE_0;
    mcpwm_init(MCPWM_UNIT_0, MCPWM_TIMER_0, &pwm_config);
    pwm_config.frequency = 500;
    pwm_config.cmpr_a = 45.9;
    pwm_config.cmpr_b = 7.0;
    pwm_config.counter_mode = MCPWM_UP_COUNTER;
    pwm_config.duty_mode = MCPWM_DUTY_MODE_0;
    mcpwm_init(MCPWM_UNIT_0, MCPWM_TIMER_1, &pwm_config);
    pwm_config.frequency = 400;
    pwm_config.cmpr_a = 23.2;
    pwm_config.cmpr_b = 97.0;
    pwm_config.counter_mode = MCPWM_UP_DOWN_COUNTER;
    pwm_config.duty_mode = MCPWM_DUTY_MODE_1;
    mcpwm_init(MCPWM_UNIT_0, MCPWM_TIMER_2, &pwm_config);
    vTaskDelete(((void*)0));
}
