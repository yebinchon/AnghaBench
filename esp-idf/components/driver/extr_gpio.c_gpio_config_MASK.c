#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_6__ {int pin_bit_mask; int mode; int /*<<< orphan*/  intr_type; scalar_t__ pull_down_en; scalar_t__ pull_up_en; } ;
typedef  TYPE_2__ gpio_config_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_7__ {TYPE_1__* pin; } ;
struct TYPE_5__ {int pad_driver; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_4__ GPIO ; 
 int GPIO_MODE_DEF_INPUT ; 
 int GPIO_MODE_DEF_OD ; 
 int GPIO_MODE_DEF_OUTPUT ; 
 int GPIO_PIN_COUNT ; 
 int* GPIO_PIN_MUX_REG ; 
 int GPIO_SEL_34 ; 
 int GPIO_SEL_35 ; 
 int GPIO_SEL_36 ; 
 int GPIO_SEL_37 ; 
 int GPIO_SEL_38 ; 
 int GPIO_SEL_39 ; 
 int GPIO_SEL_46 ; 
 int /*<<< orphan*/  GPIO_TAG ; 
 int /*<<< orphan*/  PIN_FUNC_GPIO ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

esp_err_t FUNC17(const gpio_config_t *pGPIOConfig)
{
    uint64_t gpio_pin_mask = (pGPIOConfig->pin_bit_mask);
    uint32_t io_reg = 0;
    uint32_t io_num = 0;
    uint8_t input_en = 0;
    uint8_t output_en = 0;
    uint8_t od_en = 0;
    uint8_t pu_en = 0;
    uint8_t pd_en = 0;
    if (pGPIOConfig->pin_bit_mask == 0 || pGPIOConfig->pin_bit_mask >= (((uint64_t) 1) << GPIO_PIN_COUNT)) {
        FUNC1(GPIO_TAG, "GPIO_PIN mask error ");
        return ESP_ERR_INVALID_ARG;
    }
#if CONFIG_IDF_TARGET_ESP32
    if ((pGPIOConfig->mode) & (GPIO_MODE_DEF_OUTPUT)) {
        //GPIO 34/35/36/37/38/39 can only be used as input mode;
        if ((gpio_pin_mask & ( GPIO_SEL_34 | GPIO_SEL_35 | GPIO_SEL_36 | GPIO_SEL_37 | GPIO_SEL_38 | GPIO_SEL_39))) {
            ESP_LOGE(GPIO_TAG, "GPIO34-39 can only be used as input mode");
            return ESP_ERR_INVALID_ARG;
        }
    }
#elif CONFIG_IDF_TARGET_ESP32S2BETA
    if ( (pGPIOConfig->mode & GPIO_MODE_DEF_OUTPUT) && (gpio_pin_mask & GPIO_SEL_46) ) {
        ESP_LOGE(GPIO_TAG, "GPIO46 can only be used as input mode");
        return ESP_ERR_INVALID_ARG;
    }
#endif
    do {
        io_reg = GPIO_PIN_MUX_REG[io_num];
        if (((gpio_pin_mask >> io_num) & FUNC0(0))) {
            if (!io_reg) {
                FUNC1(GPIO_TAG, "IO%d is not a valid GPIO",io_num);
                return ESP_ERR_INVALID_ARG;
            }
            if(FUNC6(io_num)){
                FUNC16(io_num);
            }
            if ((pGPIOConfig->mode) & GPIO_MODE_DEF_INPUT) {
                input_en = 1;
                FUNC5(GPIO_PIN_MUX_REG[io_num]);
            } else {
                FUNC4(GPIO_PIN_MUX_REG[io_num]);
            }
            if ((pGPIOConfig->mode) & GPIO_MODE_DEF_OD) {
                od_en = 1;
                GPIO.pin[io_num].pad_driver = 1; /*0x01 Open-drain */
            } else {
                GPIO.pin[io_num].pad_driver = 0; /*0x00 Normal gpio output */
            }
            if ((pGPIOConfig->mode) & GPIO_MODE_DEF_OUTPUT) {
                output_en = 1;
                FUNC10(io_num);
            } else {
                FUNC9(io_num);
            }
            if (pGPIOConfig->pull_up_en) {
                pu_en = 1;
                FUNC14(io_num);
            } else {
                FUNC13(io_num);
            }
            if (pGPIOConfig->pull_down_en) {
                pd_en = 1;
                FUNC12(io_num);
            } else {
                FUNC11(io_num);
            }
            FUNC2(GPIO_TAG, "GPIO[%d]| InputEn: %d| OutputEn: %d| OpenDrain: %d| Pullup: %d| Pulldown: %d| Intr:%d ", io_num, input_en, output_en, od_en, pu_en, pd_en, pGPIOConfig->intr_type);
            FUNC15(io_num, pGPIOConfig->intr_type);
            if (pGPIOConfig->intr_type) {
                FUNC8(io_num);
            } else {
                FUNC7(io_num);
            }
            FUNC3(io_reg, PIN_FUNC_GPIO); /*function number 2 is GPIO_FUNC for each pin */
        }
        io_num++;
    } while (io_num < GPIO_PIN_COUNT);
    return ESP_OK;
}