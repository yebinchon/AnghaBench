#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t spi_host_device_t ;
struct TYPE_2__ {int spics0_iomux_pin; int /*<<< orphan*/  spics_in; int /*<<< orphan*/ * spics_out; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC_GPIO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  GPIO_MODE_INPUT ; 
 int /*<<< orphan*/  GPIO_MODE_INPUT_OUTPUT ; 
 int /*<<< orphan*/ * GPIO_PIN_MUX_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* spi_periph_signal ; 

void FUNC8(spi_host_device_t host, int cs_io_num, int cs_num, int force_gpio_matrix)
{
    if (!force_gpio_matrix && cs_io_num == spi_periph_signal[host].spics0_iomux_pin && cs_num == 0) {
        //The cs0s for all SPI peripherals map to pin mux source 1, so we use that instead of a define.
        FUNC3(cs_io_num, spi_periph_signal[host].spics_in);
#if CONFIG_IDF_TARGET_ESP32
        gpio_iomux_out(cs_io_num, spi_periph_signal[host].func, false);
#elif CONFIG_IDF_TARGET_ESP32S2BETA
        gpio_iomux_out(cs_io_num, spi_periph_signal[host].func, false);
#endif
    } else {
        //Use GPIO matrix
        if (FUNC0(cs_io_num)) {
            FUNC7(cs_io_num, GPIO_MODE_INPUT_OUTPUT);
            FUNC6(cs_io_num, spi_periph_signal[host].spics_out[cs_num], false, false);
        } else {
            FUNC7(cs_io_num, GPIO_MODE_INPUT);
        }
        if (cs_num == 0) FUNC5(cs_io_num, spi_periph_signal[host].spics_in, false);
        FUNC2(GPIO_PIN_MUX_REG[cs_io_num]);
        FUNC1(GPIO_PIN_MUX_REG[cs_io_num], FUNC_GPIO);
    }
}