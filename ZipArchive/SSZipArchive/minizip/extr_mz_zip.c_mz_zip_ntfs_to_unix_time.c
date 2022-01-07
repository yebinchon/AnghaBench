
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long uint64_t ;
typedef scalar_t__ time_t ;
typedef int int32_t ;


 int MZ_OK ;

int32_t mz_zip_ntfs_to_unix_time(uint64_t ntfs_time, time_t *unix_time)
{
    *unix_time = (time_t)((ntfs_time - 116444736000000000LL) / 10000000);
    return MZ_OK;
}
