
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mcpwm_unit_t ;
typedef int mcpwm_timer_t ;
typedef int mcpwm_io_signals_t ;
struct TYPE_3__ {int frequency; double cmpr_a; double cmpr_b; int duty_mode; int counter_mode; } ;
typedef TYPE_1__ mcpwm_config_t ;


 int GPIO_PWMA_OUT ;
 int GPIO_PWMB_OUT ;
 int MCPWM_DUTY_MODE_0 ;
 int MCPWM_UP_COUNTER ;
 int mcpwm_gpio_init (int ,int ,int ) ;
 int mcpwm_init (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void mcpwm_basic_config(mcpwm_unit_t unit, mcpwm_io_signals_t mcpwm_a, mcpwm_io_signals_t mcpwm_b, mcpwm_timer_t timer)
{
    mcpwm_gpio_init(unit, mcpwm_a, GPIO_PWMA_OUT);
    mcpwm_gpio_init(unit, mcpwm_b, GPIO_PWMB_OUT);
    mcpwm_config_t pwm_config = {
        .frequency = 1000,
        .cmpr_a = 50.0,
        .cmpr_b = 50.0,
        .counter_mode = MCPWM_UP_COUNTER,
        .duty_mode = MCPWM_DUTY_MODE_0,
    };
    mcpwm_init(unit, timer, &pwm_config);
}
