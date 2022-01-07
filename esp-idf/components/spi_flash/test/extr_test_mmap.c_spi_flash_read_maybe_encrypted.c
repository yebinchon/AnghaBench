
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int esp_flash_encryption_enabled () ;
 int spi_flash_read (size_t,void*,size_t) ;
 int spi_flash_read_encrypted (size_t,void*,size_t) ;

__attribute__((used)) static esp_err_t spi_flash_read_maybe_encrypted(size_t src_addr, void *des_addr, size_t size)
{
    if (!esp_flash_encryption_enabled()) {
        return spi_flash_read(src_addr, des_addr, size);
    } else {
        return spi_flash_read_encrypted(src_addr, des_addr, size);
    }
}
