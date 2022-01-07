
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mcpwm_unit_t ;
typedef int mcpwm_timer_t ;
typedef int mcpwm_io_signals_t ;


 int TEST_ESP_OK (int ) ;
 int judge_count_value (int,int) ;
 int mcpwm_basic_config (int ,int ,int ,int ) ;
 int mcpwm_start (int ,int ) ;
 int mcpwm_stop (int ,int ) ;
 int portTICK_RATE_MS ;
 int vTaskDelay (int) ;

__attribute__((used)) static void start_stop_test(mcpwm_unit_t unit, mcpwm_io_signals_t mcpwm_a, mcpwm_io_signals_t mcpwm_b, mcpwm_timer_t timer)
{
    mcpwm_basic_config(unit, mcpwm_a, mcpwm_b, timer);
    judge_count_value(2, 1000);
    TEST_ESP_OK(mcpwm_stop(unit, timer));
    vTaskDelay(10 / portTICK_RATE_MS);
    judge_count_value(0, 0);
    TEST_ESP_OK(mcpwm_start(unit, timer));
    vTaskDelay(10 / portTICK_RATE_MS);
    judge_count_value(2, 1000);
}
