
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 scalar_t__ MZ_HOST_SYSTEM_MSDOS ;
 scalar_t__ MZ_HOST_SYSTEM_OSX_DARWIN ;
 scalar_t__ MZ_HOST_SYSTEM_RISCOS ;
 scalar_t__ MZ_HOST_SYSTEM_UNIX ;
 scalar_t__ MZ_HOST_SYSTEM_WINDOWS_NTFS ;
 int MZ_OK ;
 int MZ_PARAM_ERROR ;
 int MZ_SUPPORT_ERROR ;
 int mz_zip_attrib_posix_to_win32 (int,int*) ;
 int mz_zip_attrib_win32_to_posix (int,int*) ;

int32_t mz_zip_attrib_convert(uint8_t src_sys, uint32_t src_attrib, uint8_t target_sys, uint32_t *target_attrib)
{
    if (target_attrib == ((void*)0))
        return MZ_PARAM_ERROR;

    *target_attrib = 0;

    if ((src_sys == MZ_HOST_SYSTEM_MSDOS) || (src_sys == MZ_HOST_SYSTEM_WINDOWS_NTFS))
    {
        if ((target_sys == MZ_HOST_SYSTEM_MSDOS) || (target_sys == MZ_HOST_SYSTEM_WINDOWS_NTFS))
        {
            *target_attrib = src_attrib;
            return MZ_OK;
        }
        if ((target_sys == MZ_HOST_SYSTEM_UNIX) || (target_sys == MZ_HOST_SYSTEM_OSX_DARWIN) || (target_sys == MZ_HOST_SYSTEM_RISCOS))
            return mz_zip_attrib_win32_to_posix(src_attrib, target_attrib);
    }
    else if ((src_sys == MZ_HOST_SYSTEM_UNIX) || (src_sys == MZ_HOST_SYSTEM_OSX_DARWIN) || (src_sys == MZ_HOST_SYSTEM_RISCOS))
    {
        if ((target_sys == MZ_HOST_SYSTEM_UNIX) || (target_sys == MZ_HOST_SYSTEM_OSX_DARWIN) || (target_sys == MZ_HOST_SYSTEM_RISCOS))
        {

            if ((src_attrib >> 16) != 0)
                src_attrib >>= 16;

            *target_attrib = src_attrib;
            return MZ_OK;
        }
        if ((target_sys == MZ_HOST_SYSTEM_MSDOS) || (target_sys == MZ_HOST_SYSTEM_WINDOWS_NTFS))
            return mz_zip_attrib_posix_to_win32(src_attrib, target_attrib);
    }

    return MZ_SUPPORT_ERROR;
}
