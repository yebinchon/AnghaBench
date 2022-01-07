
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; } ;


 int MAX_HOUR ;
 int MAX_MINUTE ;
 int MAX_SECOND ;
 int localtime_r (scalar_t__*,struct tm*) ;
 scalar_t__ time (scalar_t__*) ;

uint16_t _FAT_filetime_getTimeFromRTC (void) {
 return 0;

}
