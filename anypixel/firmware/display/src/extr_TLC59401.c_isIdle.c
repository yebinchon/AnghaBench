
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int SR; } ;


 int SPI_SR_BSY ;
 int SPI_SR_TXE ;
 TYPE_1__* TLC59401_SPI ;

__attribute__((used)) static bool isIdle() {
    if(TLC59401_SPI->SR & SPI_SR_BSY)
        return 0;
    if(((TLC59401_SPI->SR & SPI_SR_TXE) == 0))
        return 0;
    return 1;
}
