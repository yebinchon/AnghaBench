
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mcpwm_unit_t ;
typedef int mcpwm_timer_t ;
typedef int mcpwm_io_signals_t ;
typedef int mcpwm_fault_signal_t ;
typedef int mcpwm_fault_input_level_t ;
typedef int mcpwm_action_on_pwmxb_t ;
typedef int mcpwm_action_on_pwmxa_t ;
struct TYPE_3__ {int pin_bit_mask; int mode; int intr_type; } ;
typedef TYPE_1__ gpio_config_t ;


 int FAULT_SIG_NUM ;
 int GPIO_FAULT_IN ;
 int GPIO_INTR_DISABLE ;
 int GPIO_MODE_OUTPUT ;
 int GPIO_PWMA_PCNT_INPUT ;
 int GPIO_PWMB_PCNT_INPUT ;
 int PCNT_CTRL_FLOATING_IO1 ;
 int PCNT_CTRL_FLOATING_IO2 ;
 int TEST_ESP_OK (int ) ;
 int get_action_level (int,int ,int ,int,int) ;
 int gpio_config (TYPE_1__*) ;
 int gpio_set_level (int,int) ;
 int mcpwm_basic_config (int ,int ,int ,int ) ;
 int mcpwm_fault_deinit (int ,int ) ;
 int mcpwm_fault_init (int ,int,int ) ;
 int mcpwm_fault_set_oneshot_mode (int ,int ,int ,int ,int ) ;
 int mcpwm_gpio_init (int ,int ,int ) ;
 int pcnt_init (int ,int ) ;
 int portTICK_RATE_MS ;
 int vTaskDelay (int) ;

__attribute__((used)) static void oneshot_fault_test(mcpwm_unit_t unit, mcpwm_io_signals_t mcpwm_a, mcpwm_io_signals_t mcpwm_b, mcpwm_timer_t timer,
        mcpwm_fault_signal_t fault_sig, mcpwm_fault_input_level_t input_sig, mcpwm_io_signals_t fault_io,
        mcpwm_action_on_pwmxa_t action_a, mcpwm_action_on_pwmxb_t action_b)
{
    gpio_config_t gp;
    gp.intr_type = GPIO_INTR_DISABLE;
    gp.mode = GPIO_MODE_OUTPUT;
    gp.pin_bit_mask = (1 << FAULT_SIG_NUM);
    gpio_config(&gp);
    gpio_set_level(FAULT_SIG_NUM, !input_sig);

    pcnt_init(GPIO_PWMA_PCNT_INPUT, PCNT_CTRL_FLOATING_IO1);
    pcnt_init(GPIO_PWMB_PCNT_INPUT, PCNT_CTRL_FLOATING_IO2);

    mcpwm_basic_config(unit, mcpwm_a, mcpwm_b, timer);
    mcpwm_gpio_init(unit, fault_io, GPIO_FAULT_IN);


    TEST_ESP_OK(mcpwm_fault_init(unit, input_sig, fault_sig));
    TEST_ESP_OK(mcpwm_fault_set_oneshot_mode(unit, timer, fault_sig, action_a, action_b));
    vTaskDelay(1000 / portTICK_RATE_MS);

    gpio_set_level(FAULT_SIG_NUM, input_sig);
    vTaskDelay(1000 / portTICK_RATE_MS);
    get_action_level(input_sig, action_a, action_b, 1000, 5);
    TEST_ESP_OK(mcpwm_fault_deinit(unit, fault_sig));
}
