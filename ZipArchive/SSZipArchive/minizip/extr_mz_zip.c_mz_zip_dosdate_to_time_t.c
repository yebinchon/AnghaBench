
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int time_t ;
struct tm {int dummy; } ;


 int mktime (struct tm*) ;
 int mz_zip_dosdate_to_raw_tm (int ,struct tm*) ;

time_t mz_zip_dosdate_to_time_t(uint64_t dos_date)
{
    struct tm ptm;
    mz_zip_dosdate_to_raw_tm(dos_date, &ptm);
    return mktime(&ptm);
}
