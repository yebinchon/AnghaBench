
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mosi_io_num; int sclk_io_num; } ;
typedef TYPE_1__ spi_bus_config_t ;


 int GPIO_PULLUP_ONLY ;
 int gpio_set_pull_mode (int,int ) ;

void slave_pull_up(const spi_bus_config_t* cfg, int spics_io_num)
{
    gpio_set_pull_mode(cfg->mosi_io_num, GPIO_PULLUP_ONLY);
    gpio_set_pull_mode(cfg->sclk_io_num, GPIO_PULLUP_ONLY);
    gpio_set_pull_mode(spics_io_num, GPIO_PULLUP_ONLY);
}
