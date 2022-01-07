
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num; } ;
typedef TYPE_1__ spi_t ;
typedef int int8_t ;


 scalar_t__ HSPI ;
 int OUTPUT ;
 int SPI_MOSI_IDX (scalar_t__) ;
 scalar_t__ VSPI ;
 int pinMatrixOutAttach (int,int ,int,int) ;
 int pinMode (int,int ) ;

void spiAttachMOSI(spi_t * spi, int8_t mosi)
{
    if(!spi) {
        return;
    }
    if(mosi < 0) {
        if(spi->num == HSPI) {
            mosi = 13;
        } else if(spi->num == VSPI) {
            mosi = 23;
        } else {
            mosi = 8;
        }
    }
    pinMode(mosi, OUTPUT);
    pinMatrixOutAttach(mosi, SPI_MOSI_IDX(spi->num), 0, 0);
}
