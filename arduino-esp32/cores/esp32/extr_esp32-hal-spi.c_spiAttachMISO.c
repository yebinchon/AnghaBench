
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num; } ;
typedef TYPE_1__ spi_t ;
typedef int int8_t ;


 scalar_t__ HSPI ;
 int INPUT ;
 int SPI_MISO_IDX (scalar_t__) ;
 int SPI_MUTEX_LOCK () ;
 int SPI_MUTEX_UNLOCK () ;
 scalar_t__ VSPI ;
 int pinMatrixInAttach (int,int ,int) ;
 int pinMode (int,int ) ;

void spiAttachMISO(spi_t * spi, int8_t miso)
{
    if(!spi) {
        return;
    }
    if(miso < 0) {
        if(spi->num == HSPI) {
            miso = 12;
        } else if(spi->num == VSPI) {
            miso = 19;
        } else {
            miso = 7;
        }
    }
    SPI_MUTEX_LOCK();
    pinMode(miso, INPUT);
    pinMatrixInAttach(miso, SPI_MISO_IDX(spi->num), 0);
    SPI_MUTEX_UNLOCK();
}
