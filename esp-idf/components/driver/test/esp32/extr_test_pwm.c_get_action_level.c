
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mcpwm_fault_input_level_t ;
typedef scalar_t__ mcpwm_action_on_pwmxb_t ;
typedef scalar_t__ mcpwm_action_on_pwmxa_t ;


 int GPIO_PWMA_PCNT_INPUT ;
 int GPIO_PWMB_PCNT_INPUT ;
 scalar_t__ MCPWM_FORCE_MCPWMXA_HIGH ;
 scalar_t__ MCPWM_FORCE_MCPWMXA_LOW ;
 scalar_t__ MCPWM_FORCE_MCPWMXB_HIGH ;
 scalar_t__ MCPWM_FORCE_MCPWMXB_LOW ;
 scalar_t__ MCPWM_NO_CHANGE_IN_MCPWMXA ;
 scalar_t__ MCPWM_NO_CHANGE_IN_MCPWMXB ;
 int PCNT_CTRL_FLOATING_IO1 ;
 int TEST_ASSERT (int) ;
 int TEST_ASSERT_INT16_WITHIN (int,int ,int) ;
 int gpio_get_level (int ) ;
 int pcnt_count (int ,int ,int) ;
 int portTICK_RATE_MS ;
 int vTaskDelay (int) ;

__attribute__((used)) static void get_action_level(mcpwm_fault_input_level_t input_sig, mcpwm_action_on_pwmxa_t action_a, mcpwm_action_on_pwmxb_t action_b, int freq, int allow_err)
{
    if(action_a == MCPWM_NO_CHANGE_IN_MCPWMXA) {
        TEST_ASSERT_INT16_WITHIN(allow_err, pcnt_count(GPIO_PWMA_PCNT_INPUT, PCNT_CTRL_FLOATING_IO1, 1000), freq);
    } else if(action_a == MCPWM_FORCE_MCPWMXA_LOW) {
        TEST_ASSERT(gpio_get_level(GPIO_PWMA_PCNT_INPUT) == 0);
    } else if(action_a == MCPWM_FORCE_MCPWMXA_HIGH) {
        TEST_ASSERT(gpio_get_level(GPIO_PWMA_PCNT_INPUT) == 1);
    }else {
        int level = gpio_get_level(GPIO_PWMA_PCNT_INPUT);
        vTaskDelay(100 / portTICK_RATE_MS);
        TEST_ASSERT(gpio_get_level(GPIO_PWMA_PCNT_INPUT) == level);
    }

    if(action_b == MCPWM_NO_CHANGE_IN_MCPWMXB) {
        TEST_ASSERT_INT16_WITHIN(allow_err, pcnt_count(GPIO_PWMB_PCNT_INPUT, PCNT_CTRL_FLOATING_IO1, 1000), freq);
    } else if(action_b == MCPWM_FORCE_MCPWMXB_LOW) {
        TEST_ASSERT(gpio_get_level(GPIO_PWMB_PCNT_INPUT) == 0);
    } else if(action_b == MCPWM_FORCE_MCPWMXB_HIGH) {
        TEST_ASSERT(gpio_get_level(GPIO_PWMB_PCNT_INPUT) == 1);
    }else {
        int level = gpio_get_level(GPIO_PWMB_PCNT_INPUT);
        vTaskDelay(100 / portTICK_RATE_MS);
        TEST_ASSERT(gpio_get_level(GPIO_PWMB_PCNT_INPUT) == level);
    }
}
