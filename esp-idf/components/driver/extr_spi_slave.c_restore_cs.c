
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int spics_io_num; } ;
struct TYPE_7__ {size_t id; TYPE_1__ cfg; } ;
typedef TYPE_2__ spi_slave_t ;
struct TYPE_8__ {int spics_in; } ;


 scalar_t__ bus_is_iomux (TYPE_2__*) ;
 int gpio_iomux_in (int ,int ) ;
 int gpio_matrix_in (int ,int ,int) ;
 TYPE_3__* spi_periph_signal ;

__attribute__((used)) static inline void restore_cs(spi_slave_t *host)
{
    if (bus_is_iomux(host)) {
        gpio_iomux_in(host->cfg.spics_io_num, spi_periph_signal[host->id].spics_in);
    } else {
        gpio_matrix_in(host->cfg.spics_io_num, spi_periph_signal[host->id].spics_in, 0);
    }
}
