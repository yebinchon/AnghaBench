
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcnt_unit_t ;
typedef scalar_t__ pcnt_channel_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 scalar_t__ GPIO_IS_VALID_GPIO (int) ;
 int GPIO_MODE_INPUT ;
 int * GPIO_PIN_MUX_REG ;
 int GPIO_PULLUP_ONLY ;
 int PCNT_CHANNEL_ERR_STR ;
 scalar_t__ PCNT_CHANNEL_MAX ;
 int PCNT_CHECK (int,int ,int ) ;
 int PCNT_CTRL_CH0_IN0_IDX ;
 int PCNT_CTRL_CH1_IN0_IDX ;
 int PCNT_GPIO_ERR_STR ;
 int PCNT_SIG_CH0_IN0_IDX ;
 int PCNT_SIG_CH1_IN0_IDX ;
 int PCNT_UNIT_ERR_STR ;
 int PCNT_UNIT_MAX ;
 int PIN_FUNC_GPIO ;
 int PIN_FUNC_SELECT (int ,int ) ;
 int gpio_matrix_in (int,int,int ) ;
 int gpio_set_direction (int,int ) ;
 int gpio_set_pull_mode (int,int ) ;

esp_err_t pcnt_set_pin(pcnt_unit_t unit, pcnt_channel_t channel, int pulse_io, int ctrl_io)
{
    PCNT_CHECK(unit < PCNT_UNIT_MAX, PCNT_UNIT_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT_CHECK(channel < PCNT_CHANNEL_MAX, PCNT_CHANNEL_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT_CHECK(GPIO_IS_VALID_GPIO(pulse_io) || pulse_io < 0, PCNT_GPIO_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT_CHECK(GPIO_IS_VALID_GPIO(ctrl_io) || ctrl_io < 0, PCNT_GPIO_ERR_STR, ESP_ERR_INVALID_ARG);

    int sig_base = (channel == 0) ? PCNT_SIG_CH0_IN0_IDX : PCNT_SIG_CH1_IN0_IDX;
    int ctrl_base = (channel == 0) ? PCNT_CTRL_CH0_IN0_IDX : PCNT_CTRL_CH1_IN0_IDX;
    if (unit > 4) {
        sig_base += 12;
        ctrl_base += 12;
    }
    int input_sig_index = sig_base + (4 * unit);
    int ctrl_sig_index = ctrl_base + (4 * unit);

    if(pulse_io >= 0) {
        PIN_FUNC_SELECT(GPIO_PIN_MUX_REG[pulse_io], PIN_FUNC_GPIO);
        gpio_set_direction(pulse_io, GPIO_MODE_INPUT);
        gpio_set_pull_mode(pulse_io, GPIO_PULLUP_ONLY);
        gpio_matrix_in(pulse_io, input_sig_index, 0);
    }
    if(ctrl_io >= 0) {
        PIN_FUNC_SELECT(GPIO_PIN_MUX_REG[ctrl_io], PIN_FUNC_GPIO);
        gpio_set_direction(ctrl_io, GPIO_MODE_INPUT);
        gpio_set_pull_mode(ctrl_io, GPIO_PULLUP_ONLY);
        gpio_matrix_in(ctrl_io, ctrl_sig_index, 0);
    }
    return ESP_OK;
}
