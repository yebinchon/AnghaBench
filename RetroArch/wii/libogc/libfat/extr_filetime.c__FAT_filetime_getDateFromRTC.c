
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ time_t ;
struct tm {int tm_mon; int tm_mday; int tm_year; } ;


 int MAX_DAY ;
 int MAX_MONTH ;
 int MIN_DAY ;
 int MIN_MONTH ;
 int localtime_r (scalar_t__*,struct tm*) ;
 scalar_t__ time (scalar_t__*) ;

uint16_t _FAT_filetime_getDateFromRTC (void) {
 return 0;

}
