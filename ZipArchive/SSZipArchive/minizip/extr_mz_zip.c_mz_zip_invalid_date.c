
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;
typedef int int32_t ;


 int datevalue_in_range (int,int,int ) ;

__attribute__((used)) static int32_t mz_zip_invalid_date(const struct tm *ptm)
{

    return (!((0) <= (ptm->tm_year) && (ptm->tm_year) <= (127 + 80)) ||
            !((0) <= (ptm->tm_mon) && (ptm->tm_mon) <= (11)) ||
            !((1) <= (ptm->tm_mday) && (ptm->tm_mday) <= (31)) ||
            !((0) <= (ptm->tm_hour) && (ptm->tm_hour) <= (23)) ||
            !((0) <= (ptm->tm_min) && (ptm->tm_min) <= (59)) ||
            !((0) <= (ptm->tm_sec) && (ptm->tm_sec) <= (59)));

}
