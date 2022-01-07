
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ num; } ;
typedef TYPE_1__ spi_t ;
typedef int int8_t ;


 scalar_t__ HSPI ;
 int OUTPUT ;
 int SPI_SS_IDX (scalar_t__,int) ;
 scalar_t__ VSPI ;
 int pinMatrixOutAttach (int,int ,int,int) ;
 int pinMode (int,int ) ;
 int spiEnableSSPins (TYPE_1__*,int) ;

void spiAttachSS(spi_t * spi, uint8_t cs_num, int8_t ss)
{
    if(!spi) {
        return;
    }
    if(cs_num > 2) {
        return;
    }
    if(ss < 0) {
        cs_num = 0;
        if(spi->num == HSPI) {
            ss = 15;
        } else if(spi->num == VSPI) {
            ss = 5;
        } else {
            ss = 11;
        }
    }
    pinMode(ss, OUTPUT);
    pinMatrixOutAttach(ss, SPI_SS_IDX(spi->num, cs_num), 0, 0);
    spiEnableSSPins(spi, (1 << cs_num));
}
