
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;


 int gettimeofday (struct timeval*,int *) ;
 struct tm* localtime_r (int *,struct tm*) ;
 int pthread_self () ;
 int sprintf (char*,char*,int,int,int,int,int,int,int ) ;
 int taosGetPthreadId () ;

char *tprefix(char *prefix) {
  struct tm Tm, *ptm;
  struct timeval timeSecs;
  time_t curTime;

  gettimeofday(&timeSecs, ((void*)0));
  curTime = timeSecs.tv_sec;
  ptm = localtime_r(&curTime, &Tm);


  sprintf(prefix, "%02d/%02d %02d:%02d:%02d.%06d 0x%lld ", ptm->tm_mon + 1, ptm->tm_mday, ptm->tm_hour, ptm->tm_min,
          ptm->tm_sec, (int)timeSecs.tv_usec, taosGetPthreadId());




  return prefix;
}
