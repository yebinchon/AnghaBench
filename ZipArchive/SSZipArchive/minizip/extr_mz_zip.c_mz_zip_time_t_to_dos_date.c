
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int time_t ;
struct tm {int dummy; } ;


 int mz_zip_time_t_to_tm (int ,struct tm*) ;
 int mz_zip_tm_to_dosdate (struct tm const*) ;

uint32_t mz_zip_time_t_to_dos_date(time_t unix_time)
{
    struct tm ptm;
    mz_zip_time_t_to_tm(unix_time, &ptm);
    return mz_zip_tm_to_dosdate((const struct tm *)&ptm);
}
