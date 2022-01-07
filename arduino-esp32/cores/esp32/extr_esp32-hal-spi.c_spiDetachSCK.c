
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

void spiDetachSCK(spi_t * spi, int8_t sck)
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
    pinMatrixOutDetach(sck, 0, 0);
    pinMode(sck, INPUT);
}
