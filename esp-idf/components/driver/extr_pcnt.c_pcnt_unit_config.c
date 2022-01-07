
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ unit; scalar_t__ channel; int pulse_gpio_num; int ctrl_gpio_num; int lctrl_mode; int hctrl_mode; int neg_mode; int pos_mode; int counter_l_lim; int counter_h_lim; } ;
typedef TYPE_1__ pcnt_config_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 scalar_t__ GPIO_IS_VALID_GPIO (int) ;
 char* PCNT_CHANNEL_ERR_STR ;
 scalar_t__ PCNT_CHANNEL_MAX ;
 int PCNT_CHECK (int,char*,int ) ;
 int PCNT_COUNT_MAX ;
 char* PCNT_COUNT_MODE_ERR_STR ;
 char* PCNT_CTRL_MODE_ERR_STR ;
 int PCNT_EVT_H_LIM ;
 int PCNT_EVT_L_LIM ;
 int PCNT_EVT_ZERO ;
 int PCNT_MODE_MAX ;
 char* PCNT_UNIT_ERR_STR ;
 scalar_t__ PCNT_UNIT_MAX ;
 int PERIPH_PCNT_MODULE ;
 int pcnt_event_disable (scalar_t__,int ) ;
 int pcnt_filter_disable (scalar_t__) ;
 int pcnt_set_event_value (scalar_t__,int ,int ) ;
 int pcnt_set_mode (scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 int pcnt_set_pin (scalar_t__,scalar_t__,int,int) ;
 int periph_module_enable (int ) ;
 int periph_module_reset (int ) ;

esp_err_t pcnt_unit_config(const pcnt_config_t *pcnt_config)
{
    uint8_t unit = pcnt_config->unit;
    uint8_t channel = pcnt_config->channel;
    int input_io = pcnt_config->pulse_gpio_num;
    int ctrl_io = pcnt_config->ctrl_gpio_num;

    PCNT_CHECK(unit < PCNT_UNIT_MAX, PCNT_UNIT_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT_CHECK(channel < PCNT_CHANNEL_MAX, PCNT_CHANNEL_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT_CHECK(input_io < 0 || (GPIO_IS_VALID_GPIO(input_io) && (input_io != ctrl_io)), "PCNT pulse input io error", ESP_ERR_INVALID_ARG);
    PCNT_CHECK(ctrl_io < 0 || GPIO_IS_VALID_GPIO(ctrl_io), "PCNT ctrl io error", ESP_ERR_INVALID_ARG);
    PCNT_CHECK((pcnt_config->pos_mode < PCNT_COUNT_MAX) && (pcnt_config->neg_mode < PCNT_COUNT_MAX), PCNT_COUNT_MODE_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT_CHECK((pcnt_config->hctrl_mode < PCNT_MODE_MAX) && (pcnt_config->lctrl_mode < PCNT_MODE_MAX), PCNT_CTRL_MODE_ERR_STR, ESP_ERR_INVALID_ARG);

    static bool pcnt_enable = 0;
    if (pcnt_enable == 0) {
        periph_module_reset(PERIPH_PCNT_MODULE);
        pcnt_enable = 1;
    }
    periph_module_enable(PERIPH_PCNT_MODULE);

    pcnt_set_event_value(unit, PCNT_EVT_H_LIM, pcnt_config->counter_h_lim);
    pcnt_set_event_value(unit, PCNT_EVT_L_LIM, pcnt_config->counter_l_lim);

    pcnt_event_disable(unit, PCNT_EVT_H_LIM);
    pcnt_event_disable(unit, PCNT_EVT_L_LIM);
    pcnt_event_disable(unit, PCNT_EVT_ZERO);
    pcnt_filter_disable(unit);

    pcnt_set_mode(unit, channel, pcnt_config->pos_mode, pcnt_config->neg_mode, pcnt_config->hctrl_mode, pcnt_config->lctrl_mode);

    pcnt_set_pin(unit, channel, input_io, ctrl_io);
    return ESP_OK;
}
