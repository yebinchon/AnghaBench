
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t spi_host_device_t ;
struct TYPE_2__ {int spics0_iomux_pin; int spics_in; int * spics_out; int func; } ;


 int FUNC_GPIO ;
 scalar_t__ GPIO_IS_VALID_OUTPUT_GPIO (int) ;
 int GPIO_MODE_INPUT ;
 int GPIO_MODE_INPUT_OUTPUT ;
 int * GPIO_PIN_MUX_REG ;
 int PIN_FUNC_SELECT (int ,int ) ;
 int PIN_INPUT_ENABLE (int ) ;
 int gpio_iomux_in (int,int ) ;
 int gpio_iomux_out (int,int ,int) ;
 int gpio_matrix_in (int,int ,int) ;
 int gpio_matrix_out (int,int ,int,int) ;
 int gpio_set_direction (int,int ) ;
 TYPE_1__* spi_periph_signal ;

void spicommon_cs_initialize(spi_host_device_t host, int cs_io_num, int cs_num, int force_gpio_matrix)
{
    if (!force_gpio_matrix && cs_io_num == spi_periph_signal[host].spics0_iomux_pin && cs_num == 0) {

        gpio_iomux_in(cs_io_num, spi_periph_signal[host].spics_in);





    } else {

        if (GPIO_IS_VALID_OUTPUT_GPIO(cs_io_num)) {
            gpio_set_direction(cs_io_num, GPIO_MODE_INPUT_OUTPUT);
            gpio_matrix_out(cs_io_num, spi_periph_signal[host].spics_out[cs_num], 0, 0);
        } else {
            gpio_set_direction(cs_io_num, GPIO_MODE_INPUT);
        }
        if (cs_num == 0) gpio_matrix_in(cs_io_num, spi_periph_signal[host].spics_in, 0);
        PIN_INPUT_ENABLE(GPIO_PIN_MUX_REG[cs_io_num]);
        PIN_FUNC_SELECT(GPIO_PIN_MUX_REG[cs_io_num], FUNC_GPIO);
    }
}
