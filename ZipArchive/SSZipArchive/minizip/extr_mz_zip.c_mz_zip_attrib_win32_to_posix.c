
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_PARAM_ERROR ;

int32_t mz_zip_attrib_win32_to_posix(uint32_t win32_attrib, uint32_t *posix_attrib)
{
    if (posix_attrib == ((void*)0))
        return MZ_PARAM_ERROR;

    *posix_attrib = 0000444;

    if ((win32_attrib & 0x01) == 0)
        *posix_attrib |= 0000222;

    if ((win32_attrib & 0x400) == 0x400)
        *posix_attrib |= 0120000;

    else if ((win32_attrib & 0x10) == 0x10)
        *posix_attrib |= 0040111;
    else
        *posix_attrib |= 0100000;

    return MZ_OK;
}
