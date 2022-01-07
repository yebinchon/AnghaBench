
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {unsigned long tv_sec; int tv_nsec; } ;
struct TYPE_2__ {unsigned long tv_sec; int tv_nsec; } ;
struct ntptimeval {int maxerror; int time_state; int tai; int esterror; TYPE_1__ time; } ;


 int MAXFREQ ;
 int NTP_ASSERT_LOCKED () ;
 int TIME_ERROR ;
 unsigned long last_time_maxerror_update ;
 int nanotime (struct timespec*) ;
 scalar_t__ ntp_is_time_error (int ) ;
 int time_esterror ;
 int time_maxerror ;
 int time_state ;
 int time_status ;
 int time_tai ;

__attribute__((used)) static void
ntp_gettime1(struct ntptimeval *ntvp)
{
 struct timespec atv;

 NTP_ASSERT_LOCKED();

 nanotime(&atv);
 ntvp->time.tv_sec = atv.tv_sec;
 ntvp->time.tv_nsec = atv.tv_nsec;
 if ((unsigned long)atv.tv_sec > last_time_maxerror_update) {
  time_maxerror += (MAXFREQ / 1000)*(atv.tv_sec-last_time_maxerror_update);
  last_time_maxerror_update = atv.tv_sec;
 }
 ntvp->maxerror = time_maxerror;
 ntvp->esterror = time_esterror;
 ntvp->tai = time_tai;
 ntvp->time_state = time_state;

 if (ntp_is_time_error(time_status))
  ntvp->time_state = TIME_ERROR;
}
