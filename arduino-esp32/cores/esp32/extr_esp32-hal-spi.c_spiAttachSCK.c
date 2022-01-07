
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
 int SPI_CLK_IDX (scalar_t__) ;
 scalar_t__ VSPI ;
 int pinMatrixOutAttach (int,int ,int,int) ;
 int pinMode (int,int ) ;

void spiAttachSCK(spi_t * spi, int8_t sck)
{
    if(!spi) {
        return;
    }
    if(sck < 0) {
        if(spi->num == HSPI) {
            sck = 14;
        } else if(spi->num == VSPI) {
            sck = 18;
        } else {
            sck = 6;
        }
    }
    pinMode(sck, OUTPUT);
    pinMatrixOutAttach(sck, SPI_CLK_IDX(spi->num), 0, 0);
}
