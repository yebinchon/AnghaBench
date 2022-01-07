
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int spi_hal_get_freq_limit (int,int) ;

int spi_get_freq_limit(bool gpio_is_used, int input_delay_ns)
{
    return spi_hal_get_freq_limit(gpio_is_used, input_delay_ns);

}
