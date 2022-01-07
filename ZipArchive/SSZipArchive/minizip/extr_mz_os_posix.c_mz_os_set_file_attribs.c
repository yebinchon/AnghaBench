
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int mode_t ;
typedef int int32_t ;


 int MZ_INTERNAL_ERROR ;
 int MZ_OK ;
 int chmod (char const*,int ) ;

int32_t mz_os_set_file_attribs(const char *path, uint32_t attributes)
{
    int32_t err = MZ_OK;

    if (chmod(path, (mode_t)attributes) == -1)
        err = MZ_INTERNAL_ERROR;

    return err;
}
