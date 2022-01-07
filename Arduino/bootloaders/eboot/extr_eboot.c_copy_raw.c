
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int FLASH_SECTOR_SIZE ;
 scalar_t__ SPIEraseSector (int) ;
 scalar_t__ SPIRead (int,int *,int const) ;
 scalar_t__ SPIWrite (int,int *,int const) ;

int copy_raw(const uint32_t src_addr,
             const uint32_t dst_addr,
             const uint32_t size)
{

    if (src_addr & 0xfff != 0 ||
        dst_addr & 0xfff != 0) {
        return 1;
    }

    const uint32_t buffer_size = FLASH_SECTOR_SIZE;
    uint8_t buffer[buffer_size];
    uint32_t left = ((size+buffer_size-1) & ~(buffer_size-1));
    uint32_t saddr = src_addr;
    uint32_t daddr = dst_addr;

    while (left) {
        if (SPIEraseSector(daddr/buffer_size)) {
            return 2;
        }
        if (SPIRead(saddr, buffer, buffer_size)) {
            return 3;
        }
        if (SPIWrite(daddr, buffer, buffer_size)) {
            return 4;
        }
        saddr += buffer_size;
        daddr += buffer_size;
        left -= buffer_size;
    }

    return 0;
}
