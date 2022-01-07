
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int SPI_Encrypt_Write (size_t,void*,size_t) ;
 int spi_flash_write (size_t,void*,size_t) ;
 int spi_flash_write_encrypted (size_t,void*,size_t) ;

esp_err_t bootloader_flash_write(size_t dest_addr, void *src, size_t size, bool write_encrypted)
{
    if (write_encrypted) {





    } else {
        return spi_flash_write(dest_addr, src, size);
    }
}
