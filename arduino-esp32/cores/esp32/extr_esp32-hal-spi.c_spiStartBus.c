
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_13__ {TYPE_2__* dev; int * lock; } ;
typedef TYPE_3__ spi_t ;
struct TYPE_11__ {int usr_mosi; int usr_miso; int doutdin; } ;
struct TYPE_12__ {int* data_buf; TYPE_1__ user; } ;


 int DPORT_CLEAR_PERI_REG_MASK (int ,int ) ;
 int DPORT_PERIP_CLK_EN_REG ;
 int DPORT_PERIP_RST_EN_REG ;
 int DPORT_SET_PERI_REG_MASK (int ,int ) ;
 int DPORT_SPI_CLK_EN ;
 int DPORT_SPI_CLK_EN_1 ;
 int DPORT_SPI_CLK_EN_2 ;
 int DPORT_SPI_RST ;
 int DPORT_SPI_RST_1 ;
 int DPORT_SPI_RST_2 ;
 int HSPI ;
 int SPI_MUTEX_LOCK () ;
 int SPI_MUTEX_UNLOCK () ;
 int VSPI ;
 int _on_apb_change ;
 TYPE_3__* _spi_bus_array ;
 int addApbChangeCallback (TYPE_3__*,int ) ;
 int spiSetBitOrder (TYPE_3__*,int) ;
 int spiSetClockDiv (TYPE_3__*,int ) ;
 int spiSetDataMode (TYPE_3__*,int) ;
 int spiStopBus (TYPE_3__*) ;
 int * xSemaphoreCreateMutex () ;

spi_t * spiStartBus(uint8_t spi_num, uint32_t clockDiv, uint8_t dataMode, uint8_t bitOrder)
{
    if(spi_num > 3){
        return ((void*)0);
    }

    spi_t * spi = &_spi_bus_array[spi_num];


    if(spi->lock == ((void*)0)){
        spi->lock = xSemaphoreCreateMutex();
        if(spi->lock == ((void*)0)) {
            return ((void*)0);
        }
    }


    if(spi_num == HSPI) {
        DPORT_SET_PERI_REG_MASK(DPORT_PERIP_CLK_EN_REG, DPORT_SPI_CLK_EN);
        DPORT_CLEAR_PERI_REG_MASK(DPORT_PERIP_RST_EN_REG, DPORT_SPI_RST);
    } else if(spi_num == VSPI) {
        DPORT_SET_PERI_REG_MASK(DPORT_PERIP_CLK_EN_REG, DPORT_SPI_CLK_EN_2);
        DPORT_CLEAR_PERI_REG_MASK(DPORT_PERIP_RST_EN_REG, DPORT_SPI_RST_2);
    } else {
        DPORT_SET_PERI_REG_MASK(DPORT_PERIP_CLK_EN_REG, DPORT_SPI_CLK_EN_1);
        DPORT_CLEAR_PERI_REG_MASK(DPORT_PERIP_RST_EN_REG, DPORT_SPI_RST_1);
    }

    spiStopBus(spi);
    spiSetDataMode(spi, dataMode);
    spiSetBitOrder(spi, bitOrder);
    spiSetClockDiv(spi, clockDiv);

    SPI_MUTEX_LOCK();
    spi->dev->user.usr_mosi = 1;
    spi->dev->user.usr_miso = 1;
    spi->dev->user.doutdin = 1;

    int i;
    for(i=0; i<16; i++) {
        spi->dev->data_buf[i] = 0x00000000;
    }
    SPI_MUTEX_UNLOCK();

    addApbChangeCallback(spi, _on_apb_change);
    return spi;
}
