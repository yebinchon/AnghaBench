
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

void spiDetachSS(spi_t * spi, int8_t ss)
{
    if(!spi) {
        return;
    }
    if(ss < 0) {
        if(spi->num == HSPI) {
            ss = 15;
        } else if(spi->num == VSPI) {
            ss = 5;
        } else {
            ss = 11;
        }
    }
    pinMatrixOutDetach(ss, 0, 0);
    pinMode(ss, INPUT);
}
