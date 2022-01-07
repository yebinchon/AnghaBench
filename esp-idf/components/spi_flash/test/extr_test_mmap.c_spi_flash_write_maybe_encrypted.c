
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int esp_flash_encryption_enabled () ;
 int spi_flash_write (size_t,void const*,size_t) ;
 int spi_flash_write_encrypted (size_t,void const*,size_t) ;

__attribute__((used)) static esp_err_t spi_flash_write_maybe_encrypted(size_t des_addr, const void *src_addr, size_t size)
{
    if (!esp_flash_encryption_enabled()) {
        return spi_flash_write(des_addr, src_addr, size);
    } else {
        return spi_flash_write_encrypted(des_addr, src_addr, size);
    }
}
