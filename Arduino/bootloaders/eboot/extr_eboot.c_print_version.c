
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ver ;
typedef scalar_t__ uint32_t ;
typedef int section_header_t ;
typedef int image_header_t ;


 scalar_t__ const APP_START_OFFSET ;
 scalar_t__ SPIRead (scalar_t__ const,scalar_t__*,int) ;
 int ets_printf (char const*,scalar_t__) ;

int print_version(const uint32_t flash_addr)
{
    uint32_t ver;
    if (SPIRead(flash_addr + APP_START_OFFSET + sizeof(image_header_t) + sizeof(section_header_t), &ver, sizeof(ver))) {
        return 1;
    }
    const char* __attribute__ ((aligned (4))) fmtt = "v%08x\n\0\0";
    uint32_t fmt[2];
    fmt[0] = ((uint32_t*) fmtt)[0];
    fmt[1] = ((uint32_t*) fmtt)[1];
    ets_printf((const char*) fmt, ver);
    return 0;
}
