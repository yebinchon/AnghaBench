
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int spi_t ;


 int SPI_MUTEX_LOCK () ;
 int SPI_MUTEX_UNLOCK () ;
 int spiTransferBitsNL (int *,int ,int *,int ) ;

void spiTransferBits(spi_t * spi, uint32_t data, uint32_t * out, uint8_t bits)
{
    if(!spi) {
        return;
    }
    SPI_MUTEX_LOCK();
    spiTransferBitsNL(spi, data, out, bits);
    SPI_MUTEX_UNLOCK();
}
