
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int mcpwm_unit_t ;
typedef int mcpwm_timer_t ;
typedef int mcpwm_io_signals_t ;
typedef int mcpwm_carrier_out_ivt_t ;
typedef int mcpwm_carrier_os_t ;
struct TYPE_3__ {int carrier_period; int carrier_duty; int pulse_width_in_os; int carrier_ivt_mode; int carrier_os_mode; } ;
typedef TYPE_1__ mcpwm_carrier_config_t ;


 int TEST_ESP_OK (int ) ;
 int judge_count_value (int,int) ;
 int mcpwm_basic_config (int ,int ,int ,int ) ;
 int mcpwm_carrier_disable (int ,int ) ;
 int mcpwm_carrier_init (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void carrier_with_configuration_test(mcpwm_unit_t unit, mcpwm_io_signals_t mcpwm_a, mcpwm_io_signals_t mcpwm_b, mcpwm_timer_t timer,
        mcpwm_carrier_os_t oneshot_or_not, mcpwm_carrier_out_ivt_t invert_or_not, uint8_t period, uint8_t duty, uint8_t os_width)
{
    mcpwm_basic_config(unit, mcpwm_a, mcpwm_b, timer);

    mcpwm_carrier_config_t chop_config;
    chop_config.carrier_period = period;
    chop_config.carrier_duty = duty;
    chop_config.carrier_os_mode = oneshot_or_not;
    chop_config.pulse_width_in_os = os_width;
    chop_config.carrier_ivt_mode = invert_or_not;
    mcpwm_carrier_init(unit, timer, &chop_config);

    if(!oneshot_or_not) {




        judge_count_value(500, 62500/(period + 1));
    } else {
        judge_count_value(500, 40000/((period + 1)));
    }

    TEST_ESP_OK(mcpwm_carrier_disable(unit, timer));
    judge_count_value(2, 1000);
}
