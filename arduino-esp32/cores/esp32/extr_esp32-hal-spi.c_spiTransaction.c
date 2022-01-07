
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_13__ {TYPE_5__* dev; } ;
typedef TYPE_6__ spi_t ;
struct TYPE_11__ {int wr_bit_order; int rd_bit_order; } ;
struct TYPE_10__ {int ck_out_edge; } ;
struct TYPE_9__ {int ck_idle_edge; } ;
struct TYPE_8__ {int val; } ;
struct TYPE_12__ {TYPE_4__ ctrl; TYPE_3__ user; TYPE_2__ pin; TYPE_1__ clock; } ;


 int SPI_LSBFIRST ;




 int SPI_MSBFIRST ;
 int SPI_MUTEX_LOCK () ;

void spiTransaction(spi_t * spi, uint32_t clockDiv, uint8_t dataMode, uint8_t bitOrder)
{
    if(!spi) {
        return;
    }
    SPI_MUTEX_LOCK();
    spi->dev->clock.val = clockDiv;
    switch (dataMode) {
        case 130:
            spi->dev->pin.ck_idle_edge = 0;
            spi->dev->user.ck_out_edge = 1;
            break;
        case 129:
            spi->dev->pin.ck_idle_edge = 1;
            spi->dev->user.ck_out_edge = 1;
            break;
        case 128:
            spi->dev->pin.ck_idle_edge = 1;
            spi->dev->user.ck_out_edge = 0;
            break;
        case 131:
        default:
            spi->dev->pin.ck_idle_edge = 0;
            spi->dev->user.ck_out_edge = 0;
            break;
    }
    if (SPI_MSBFIRST == bitOrder) {
        spi->dev->ctrl.wr_bit_order = 0;
        spi->dev->ctrl.rd_bit_order = 0;
    } else if (SPI_LSBFIRST == bitOrder) {
        spi->dev->ctrl.wr_bit_order = 1;
        spi->dev->ctrl.rd_bit_order = 1;
    }
}
