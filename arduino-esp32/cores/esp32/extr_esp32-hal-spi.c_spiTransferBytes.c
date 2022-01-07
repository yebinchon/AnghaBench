
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int spi_t ;


 int SPI_MUTEX_LOCK () ;
 int SPI_MUTEX_UNLOCK () ;
 int __spiTransferBytes (int *,int const*,int *,int) ;

void spiTransferBytes(spi_t * spi, const uint8_t * data, uint8_t * out, uint32_t size)
{
    if(!spi) {
        return;
    }
    SPI_MUTEX_LOCK();
    while(size) {
        if(size > 64) {
            __spiTransferBytes(spi, data, out, 64);
            size -= 64;
            if(data) {
                data += 64;
            }
            if(out) {
                out += 64;
            }
        } else {
            __spiTransferBytes(spi, data, out, size);
            size = 0;
        }
    }
    SPI_MUTEX_UNLOCK();
}
