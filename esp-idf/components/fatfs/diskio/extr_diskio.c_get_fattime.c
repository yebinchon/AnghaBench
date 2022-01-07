
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int tm_hour; int tm_min; int tm_sec; scalar_t__ tm_mday; scalar_t__ tm_mon; } ;
typedef int WORD ;
typedef int DWORD ;


 int localtime_r (int *,struct tm*) ;
 int time (int *) ;

DWORD get_fattime(void)
{
    time_t t = time(((void*)0));
    struct tm tmr;
    localtime_r(&t, &tmr);
    int year = tmr.tm_year < 80 ? 0 : tmr.tm_year - 80;
    return ((DWORD)(year) << 25)
            | ((DWORD)(tmr.tm_mon + 1) << 21)
            | ((DWORD)tmr.tm_mday << 16)
            | (WORD)(tmr.tm_hour << 11)
            | (WORD)(tmr.tm_min << 5)
            | (WORD)(tmr.tm_sec >> 1);
}
