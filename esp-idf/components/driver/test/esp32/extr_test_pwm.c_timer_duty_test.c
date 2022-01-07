
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mcpwm_unit_t ;
typedef int mcpwm_timer_t ;
typedef int mcpwm_io_signals_t ;


 int INITIAL_DUTY ;
 int MCPWM_DUTY_MODE_0 ;
 int MCPWM_OPR_A ;
 int MCPWM_OPR_B ;
 int TEST_ASSERT_EQUAL_INT (double,int) ;
 int TEST_ESP_OK (int ) ;
 int mcpwm_basic_config (int ,int ,int ,int ) ;
 double mcpwm_get_duty (int ,int ,int ) ;
 int mcpwm_set_duty (int ,int ,int ,float) ;
 int mcpwm_set_duty_in_us (int ,int ,int ,int) ;
 int mcpwm_set_duty_type (int ,int ,int ,int ) ;
 int portTICK_RATE_MS ;
 int printf (char*,double) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void timer_duty_test(mcpwm_unit_t unit, mcpwm_io_signals_t mcpwm_a, mcpwm_io_signals_t mcpwm_b, mcpwm_timer_t timer)
{
    mcpwm_basic_config(unit, mcpwm_a, mcpwm_b, timer);
    vTaskDelay(1000 / portTICK_RATE_MS);

    TEST_ESP_OK(mcpwm_set_duty(unit, timer, MCPWM_OPR_A, (INITIAL_DUTY * 1)));
    TEST_ESP_OK(mcpwm_set_duty(unit, timer, MCPWM_OPR_B, (INITIAL_DUTY * 2)));

    TEST_ASSERT_EQUAL_INT(mcpwm_get_duty(unit, timer, MCPWM_OPR_A), INITIAL_DUTY * 1);
    TEST_ASSERT_EQUAL_INT(mcpwm_get_duty(unit, timer, MCPWM_OPR_B), INITIAL_DUTY * 2);
    vTaskDelay(1000 / portTICK_RATE_MS);

    mcpwm_set_duty(unit, timer, MCPWM_OPR_A, 55.5f);
    mcpwm_set_duty_type(unit, timer, MCPWM_OPR_A, MCPWM_DUTY_MODE_0);
    printf("mcpwm check = %f\n", mcpwm_get_duty(unit, timer, MCPWM_OPR_A));

    mcpwm_set_duty_in_us(unit, timer, MCPWM_OPR_B, 500);
    printf("mcpwm check = %f\n", mcpwm_get_duty(unit, timer, MCPWM_OPR_B));
    vTaskDelay(1000 / portTICK_RATE_MS);
}
