
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* localtime (int*) ;
 int memset (char*,int ,size_t) ;
 int sprintf (char*,char*,char*,int) ;
 int strftime (char*,int,char*,struct tm*) ;

void httpTimeToString(time_t t, char *buf, int buflen) {
  memset(buf, 0, (size_t)buflen);
  char ts[30] = {0};

  struct tm *ptm;
  time_t tt = t / 1000;
  ptm = localtime(&tt);
  strftime(ts, 64, "%Y-%m-%d %H:%M:%S", ptm);
  sprintf(buf, "%s.%03ld", ts, t % 1000);
}
