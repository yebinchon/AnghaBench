
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int int32_t ;


 int MZ_INTERNAL_ERROR ;
 int MZ_OK ;
 int MZ_PARAM_ERROR ;
 int * localtime_r (int *,struct tm*) ;
 int memcpy (struct tm*,struct tm*,int) ;
 int memset (struct tm*,int ,int) ;

int32_t mz_zip_time_t_to_tm(time_t unix_time, struct tm *ptm)
{
    struct tm ltm;
    if (ptm == ((void*)0))
        return MZ_PARAM_ERROR;
    if (localtime_r(&unix_time, &ltm) == ((void*)0))
    {

        memset(ptm, 0, sizeof(struct tm));
        return MZ_INTERNAL_ERROR;
    }
    memcpy(ptm, &ltm, sizeof(struct tm));
    return MZ_OK;
}
