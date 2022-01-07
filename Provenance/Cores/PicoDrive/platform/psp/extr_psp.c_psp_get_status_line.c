
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hour; int minutes; } ;
typedef TYPE_1__ pspTime ;
typedef int buff ;


 int scePowerGetBatteryLifePercent () ;
 int scePowerGetBatteryLifeTime () ;
 int scePowerIsPowerOnline () ;
 int sceRtcGetCurrentClockLocalTime (TYPE_1__*) ;
 int snprintf (char*,int,char*,int,int,...) ;
 int strlen (char*) ;

char *psp_get_status_line(void)
{
 static char buff[64];
 int ret, bat_percent, bat_time;
 pspTime time;

 ret = sceRtcGetCurrentClockLocalTime(&time);
 bat_percent = scePowerGetBatteryLifePercent();
 bat_time = scePowerGetBatteryLifeTime();
 if (ret < 0 || bat_percent < 0 || bat_time < 0) return ((void*)0);

 snprintf(buff, sizeof(buff), "%02i:%02i  bat: %3i%%", time.hour, time.minutes, bat_percent);
 if (!scePowerIsPowerOnline())
  snprintf(buff+strlen(buff), sizeof(buff)-strlen(buff), " (%i:%02i)", bat_time/60, bat_time%60);
 return buff;
}
