
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ spi_slave_t ;


 int SPICOMMON_BUSFLAG_IOMUX_PINS ;

__attribute__((used)) static inline bool bus_is_iomux(spi_slave_t *host)
{
    return host->flags&SPICOMMON_BUSFLAG_IOMUX_PINS;
}
