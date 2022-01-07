
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tm {int tm_year; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; scalar_t__ tm_mon; scalar_t__ tm_mday; } ;


 int memcpy (struct tm*,struct tm const*,int) ;
 scalar_t__ mz_zip_invalid_date (struct tm*) ;

uint32_t mz_zip_tm_to_dosdate(const struct tm *ptm)
{
    struct tm fixed_tm;
    memcpy(&fixed_tm, ptm, sizeof(struct tm));
    if (fixed_tm.tm_year >= 1980)
        fixed_tm.tm_year -= 1980;
    else if (fixed_tm.tm_year >= 80)
        fixed_tm.tm_year -= 80;
    else
        fixed_tm.tm_year += 20;

    if (mz_zip_invalid_date(&fixed_tm))
        return 0;

    return (((uint32_t)fixed_tm.tm_mday + (32 * ((uint32_t)fixed_tm.tm_mon + 1)) + (512 * (uint32_t)fixed_tm.tm_year)) << 16) |
        (((uint32_t)fixed_tm.tm_sec / 2) + (32 * (uint32_t)fixed_tm.tm_min) + (2048 * (uint32_t)fixed_tm.tm_hour));
}
