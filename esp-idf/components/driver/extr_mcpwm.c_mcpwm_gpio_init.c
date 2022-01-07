
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mcpwm_unit_t ;
typedef scalar_t__ mcpwm_io_signals_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int GPIO_IS_VALID_GPIO (int) ;
 int GPIO_IS_VALID_OUTPUT_GPIO (int) ;
 int GPIO_MODE_INPUT ;
 int GPIO_MODE_OUTPUT ;
 int * GPIO_PIN_MUX_REG ;
 scalar_t__ MCPWM2B ;
 int MCPWM_CHECK (int,int ,int ) ;
 scalar_t__ MCPWM_FAULT_2 ;
 int MCPWM_GPIO_ERROR ;
 int MCPWM_PIN_IGNORE ;
 scalar_t__ MCPWM_SYNC_0 ;
 scalar_t__ MCPWM_UNIT_0 ;
 scalar_t__ MCPWM_UNIT_MAX ;
 int MCPWM_UNIT_NUM_ERROR ;
 scalar_t__ OFFSET_FOR_GPIO_IDX_1 ;
 scalar_t__ OFFSET_FOR_GPIO_IDX_2 ;
 scalar_t__ PERIPH_PWM0_MODULE ;
 int PIN_FUNC_GPIO ;
 int PIN_FUNC_SELECT (int ,int ) ;
 scalar_t__ PWM0_OUT0A_IDX ;
 scalar_t__ PWM0_SYNC0_IN_IDX ;
 scalar_t__ PWM1_OUT0A_IDX ;
 scalar_t__ PWM1_SYNC0_IN_IDX ;
 int gpio_matrix_in (int,scalar_t__,int ) ;
 int gpio_matrix_out (int,scalar_t__,int ,int ) ;
 int gpio_set_direction (int,int ) ;
 int periph_module_enable (scalar_t__) ;

esp_err_t mcpwm_gpio_init(mcpwm_unit_t mcpwm_num, mcpwm_io_signals_t io_signal, int gpio_num)
{
    if (gpio_num == MCPWM_PIN_IGNORE) {

        return ESP_OK;
    }

    MCPWM_CHECK(mcpwm_num < MCPWM_UNIT_MAX, MCPWM_UNIT_NUM_ERROR, ESP_ERR_INVALID_ARG);
    MCPWM_CHECK((GPIO_IS_VALID_GPIO(gpio_num)), MCPWM_GPIO_ERROR, ESP_ERR_INVALID_ARG);

    periph_module_enable(PERIPH_PWM0_MODULE + mcpwm_num);
    PIN_FUNC_SELECT(GPIO_PIN_MUX_REG[gpio_num], PIN_FUNC_GPIO);
    bool mcpwm_gpio_sig = (io_signal <= MCPWM2B);
    if (mcpwm_num == MCPWM_UNIT_0) {
        if (mcpwm_gpio_sig) {
            MCPWM_CHECK((GPIO_IS_VALID_OUTPUT_GPIO(gpio_num)), MCPWM_GPIO_ERROR, ESP_ERR_INVALID_ARG);
            gpio_set_direction(gpio_num, GPIO_MODE_OUTPUT);
            gpio_matrix_out(gpio_num, PWM0_OUT0A_IDX + io_signal, 0, 0);
        } else {
            gpio_set_direction(gpio_num, GPIO_MODE_INPUT);
            gpio_matrix_in(gpio_num, PWM0_SYNC0_IN_IDX + io_signal - OFFSET_FOR_GPIO_IDX_1, 0);
        }
    } else {
        if (mcpwm_gpio_sig) {
            MCPWM_CHECK((GPIO_IS_VALID_OUTPUT_GPIO(gpio_num)), MCPWM_GPIO_ERROR, ESP_ERR_INVALID_ARG);
            gpio_set_direction(gpio_num, GPIO_MODE_OUTPUT);
            gpio_matrix_out(gpio_num, PWM1_OUT0A_IDX + io_signal, 0, 0);
        } else if (io_signal >= MCPWM_SYNC_0 && io_signal < MCPWM_FAULT_2) {
            gpio_set_direction(gpio_num, GPIO_MODE_INPUT);
            gpio_matrix_in(gpio_num, PWM1_SYNC0_IN_IDX + io_signal - OFFSET_FOR_GPIO_IDX_1, 0);
        } else {
            gpio_set_direction(gpio_num, GPIO_MODE_INPUT);
            gpio_matrix_in(gpio_num, PWM1_SYNC0_IN_IDX + io_signal - OFFSET_FOR_GPIO_IDX_2, 0);
        }
    }
    return ESP_OK;
}
