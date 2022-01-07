
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
 scalar_t__ VSPI ;
 int pinMatrixOutDetach (int,int,int) ;
 int pinMode (int,int ) ;

void spiDetachMOSI(spi_t * spi, int8_t mosi)
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
    pinMatrixOutDetach(mosi, 0, 0);
    pinMode(mosi, INPUT);
}
