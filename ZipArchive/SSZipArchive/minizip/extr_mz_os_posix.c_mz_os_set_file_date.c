
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* time_t ;
struct utimbuf {void* modtime; void* actime; } ;
typedef int int32_t ;


 int MZ_INTERNAL_ERROR ;
 int MZ_OK ;
 int MZ_UNUSED (void*) ;
 scalar_t__ utime (char const*,struct utimbuf*) ;

int32_t mz_os_set_file_date(const char *path, time_t modified_date, time_t accessed_date, time_t creation_date)
{
    struct utimbuf ut;

    ut.actime = accessed_date;
    ut.modtime = modified_date;


    MZ_UNUSED(creation_date);

    if (utime(path, &ut) != 0)
        return MZ_INTERNAL_ERROR;

    return MZ_OK;
}
