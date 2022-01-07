
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ time_t ;
typedef int int32_t ;


 int MZ_OK ;

int32_t mz_zip_unix_to_ntfs_time(time_t unix_time, uint64_t *ntfs_time)
{
    *ntfs_time = ((uint64_t)unix_time * 10000000) + 116444736000000000LL;
    return MZ_OK;
}
