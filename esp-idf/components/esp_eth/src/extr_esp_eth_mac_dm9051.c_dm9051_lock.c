
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spi_lock; } ;
typedef TYPE_1__ emac_dm9051_t ;


 int DM9051_SPI_LOCK_TIMEOUT_MS ;
 scalar_t__ pdTRUE ;
 scalar_t__ xSemaphoreTake (int ,int ) ;

__attribute__((used)) static inline bool dm9051_lock(emac_dm9051_t *emac)
{
    return xSemaphoreTake(emac->spi_lock, DM9051_SPI_LOCK_TIMEOUT_MS) == pdTRUE;
}
