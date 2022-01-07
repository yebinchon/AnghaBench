
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct tm {int dummy; } ;
typedef scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__ cfgStatus; } ;
typedef TYPE_1__ SGlobalConfig ;
typedef int FILE ;


 scalar_t__ MILLISECOND_PER_HOUR ;
 scalar_t__ MILLISECOND_PER_SECOND ;
 scalar_t__ TSDB_CFG_CSTATUS_DEFAULT ;
 int abs (scalar_t__) ;
 size_t daylight ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (char*,int,int,int *) ;
 int localtime_r (int *,struct tm*) ;
 int pPrint (char*,int ) ;
 int setenv (char*,char*,int) ;
 int sprintf (int ,char*,char*,char*,char*,int ) ;
 scalar_t__ strlen (char*) ;
 char* strstr (char*,char*) ;
 int time (int *) ;
 scalar_t__ timezone ;
 TYPE_1__* tsGetConfigOption (char*) ;
 int tsTimezone ;
 char** tzname ;
 int tzset () ;

void taosGetSystemTimezone() {
  SGlobalConfig *cfg_timezone = tsGetConfigOption("timezone");
  if (cfg_timezone == ((void*)0)) return;
  if (cfg_timezone->cfgStatus >= TSDB_CFG_CSTATUS_DEFAULT) {
    return;
  }






  time_t tx1 = time(((void*)0));
  struct tm tm1;
  localtime_r(&tx1, &tm1);


  FILE *f = fopen("/etc/timezone", "r");
  char buf[64] = {0};
  if (f != ((void*)0)) {
    fread(buf, 64, 1, f);
    fclose(f);
  }

  char *lineEnd = strstr(buf, "\n");
  if (lineEnd != ((void*)0)) {
    *lineEnd = 0;
  }


  if (strlen(buf) > 0) {
    setenv("TZ", buf, 1);
  }


  tzset();
  int32_t tz = (-timezone * MILLISECOND_PER_SECOND) / MILLISECOND_PER_HOUR;
  tz += daylight;







  sprintf(tsTimezone, "%s (%s, %s%02d00)", buf, tzname[daylight], tz >= 0 ? "+" : "-", abs(tz));

  cfg_timezone->cfgStatus = TSDB_CFG_CSTATUS_DEFAULT;
  pPrint("timezone not configured, set to system default:%s", tsTimezone);
}
