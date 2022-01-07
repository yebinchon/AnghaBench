
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mcpwm_unit_t ;
typedef int mcpwm_timer_t ;
typedef int mcpwm_io_signals_t ;
typedef int mcpwm_carrier_out_ivt_t ;


 int TEST_ESP_OK (int ) ;
 int judge_count_value (int,int) ;
 int mcpwm_basic_config (int ,int ,int ,int ) ;
 int mcpwm_carrier_enable (int ,int ) ;
 int mcpwm_carrier_output_invert (int ,int ,int ) ;
 int mcpwm_carrier_set_duty_cycle (int ,int ,int ) ;
 int mcpwm_carrier_set_period (int ,int ,int ) ;
 int portTICK_RATE_MS ;
 int vTaskDelay (int) ;

__attribute__((used)) static void carrier_with_set_function_test(mcpwm_unit_t unit, mcpwm_io_signals_t mcpwm_a, mcpwm_io_signals_t mcpwm_b, mcpwm_timer_t timer,
        mcpwm_carrier_out_ivt_t invert_or_not, uint8_t period, uint8_t duty, uint8_t os_width)
{

    mcpwm_basic_config(unit, mcpwm_a, mcpwm_b, timer);
    TEST_ESP_OK(mcpwm_carrier_enable(unit, timer));
    TEST_ESP_OK(mcpwm_carrier_set_period(unit, timer, period));
    TEST_ESP_OK(mcpwm_carrier_set_duty_cycle(unit, timer, duty));
    judge_count_value(500, 50000/5.6);


    TEST_ESP_OK(mcpwm_carrier_output_invert(unit, timer, invert_or_not));
    vTaskDelay(2000 / portTICK_RATE_MS);
}
