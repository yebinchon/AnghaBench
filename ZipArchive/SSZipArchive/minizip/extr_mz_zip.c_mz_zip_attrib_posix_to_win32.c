
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_PARAM_ERROR ;

int32_t mz_zip_attrib_posix_to_win32(uint32_t posix_attrib, uint32_t *win32_attrib)
{
    if (win32_attrib == ((void*)0))
        return MZ_PARAM_ERROR;

    *win32_attrib = 0;


    if ((posix_attrib & 0000333) == 0 && (posix_attrib & 0000444) != 0)
        *win32_attrib |= 0x01;

    if ((posix_attrib & 0170000) == 0120000)
        *win32_attrib |= 0x400;

    else if ((posix_attrib & 0170000) == 0040000)
        *win32_attrib |= 0x10;

    else
        *win32_attrib |= 0x80;

    return MZ_OK;
}
