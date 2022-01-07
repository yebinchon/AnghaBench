
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; int tm_mday; int tm_mon; int tm_year; scalar_t__ tm_isdst; } ;


 int mktime (struct tm*) ;

time_t _FAT_filetime_to_time_t (uint16_t t, uint16_t d)
{
 struct tm timeParts;

 timeParts.tm_hour = t >> 11;
 timeParts.tm_min = (t >> 5) & 0x3F;
 timeParts.tm_sec = (t & 0x1F) << 1;

 timeParts.tm_mday = d & 0x1F;
 timeParts.tm_mon = ((d >> 5) & 0x0F) - 1;
 timeParts.tm_year = (d >> 9) + 80;

 timeParts.tm_isdst = 0;

 return mktime(&timeParts);
}
