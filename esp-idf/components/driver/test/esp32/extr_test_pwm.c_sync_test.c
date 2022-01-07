
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mcpwm_unit_t ;
typedef int mcpwm_timer_t ;
typedef int mcpwm_sync_signal_t ;
typedef int mcpwm_io_signals_t ;
struct TYPE_5__ {int frequency; double cmpr_a; double cmpr_b; int duty_mode; int counter_mode; } ;
typedef TYPE_1__ mcpwm_config_t ;
struct TYPE_6__ {int pin_bit_mask; int mode; int intr_type; } ;
typedef TYPE_2__ gpio_config_t ;


 int GPIO_INTR_DISABLE ;
 int GPIO_MODE_OUTPUT ;
 int GPIO_PWMA_OUT ;
 int GPIO_PWMB_OUT ;
 int GPIO_SYNC_IN ;
 int MCPWM_DUTY_MODE_0 ;
 int MCPWM_UP_COUNTER ;
 int SYN_SIG_NUM ;
 int gpio_config (TYPE_2__*) ;
 int gpio_pulldown_en (int ) ;
 int gpio_set_level (int,int) ;
 int mcpwm_gpio_init (int ,int ,int ) ;
 int mcpwm_init (int ,int ,TYPE_1__*) ;
 int mcpwm_sync_disable (int ,int ) ;
 int mcpwm_sync_enable (int ,int ,int ,int) ;
 int portTICK_RATE_MS ;
 int vTaskDelay (int) ;

__attribute__((used)) static void sync_test(mcpwm_unit_t unit, mcpwm_io_signals_t mcpwm_a, mcpwm_io_signals_t mcpwm_b, mcpwm_timer_t timer,
        mcpwm_sync_signal_t sync_sig, mcpwm_io_signals_t sync_io)
{
    gpio_config_t gp;
    gp.intr_type = GPIO_INTR_DISABLE;
    gp.mode = GPIO_MODE_OUTPUT;
    gp.pin_bit_mask = (1 << SYN_SIG_NUM);
    gpio_config(&gp);
    gpio_set_level(SYN_SIG_NUM, 0);

    mcpwm_gpio_init(unit, mcpwm_a, GPIO_PWMA_OUT);
    mcpwm_gpio_init(unit, mcpwm_b, GPIO_PWMB_OUT);
    mcpwm_gpio_init(unit, sync_io, GPIO_SYNC_IN);
    mcpwm_config_t pwm_config = {
        .frequency = 1000,
        .cmpr_a = 50.0,
        .cmpr_b = 50.0,
        .counter_mode = MCPWM_UP_COUNTER,
        .duty_mode = MCPWM_DUTY_MODE_0,
    };
    mcpwm_init(unit, timer, &pwm_config);
    gpio_pulldown_en(GPIO_SYNC_IN);

    mcpwm_sync_enable(unit, timer, sync_sig, 200);
    gpio_set_level(SYN_SIG_NUM, 1);
    vTaskDelay(2000 / portTICK_RATE_MS);
    mcpwm_sync_disable(unit, timer);
    vTaskDelay(2000 / portTICK_RATE_MS);
}
