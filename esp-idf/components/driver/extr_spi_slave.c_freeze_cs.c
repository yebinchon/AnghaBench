
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t id; } ;
typedef TYPE_1__ spi_slave_t ;
struct TYPE_5__ {int spics_in; } ;


 int GPIO_FUNC_IN_HIGH ;
 int gpio_matrix_in (int ,int ,int) ;
 TYPE_2__* spi_periph_signal ;

__attribute__((used)) static void freeze_cs(spi_slave_t *host)
{
    gpio_matrix_in(GPIO_FUNC_IN_HIGH, spi_periph_signal[host->id].spics_in, 0);
}
