
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_4__ {int second; int minute; int hour; int day; int month; int year; } ;
typedef TYPE_1__ sceCdCLOCK ;


 scalar_t__ DEC (int ) ;
 scalar_t__ STARTING_YEAR ;
 int _gmtotime_t (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int configConvertToLocalTime (TYPE_1__*) ;
 int sceCdReadClock (TYPE_1__*) ;

time_t ps2_time(time_t *t) {
   time_t tim;
   sceCdCLOCK clocktime;

   sceCdReadClock(&clocktime);
   configConvertToLocalTime(&clocktime);

   tim = _gmtotime_t (DEC(clocktime.year)+ STARTING_YEAR,
                        DEC(clocktime.month),
                        DEC(clocktime.day),
                        DEC(clocktime.hour),
                        DEC(clocktime.minute),
                        DEC(clocktime.second));

 if(t)
  *t = tim;

 return tim;
}
