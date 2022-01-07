
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long TaskTrackerDelay ;
 scalar_t__ got_SIGHUP ;
 scalar_t__ got_SIGTERM ;
 int pg_usleep (long const) ;

__attribute__((used)) static void
TrackerDelayLoop(void)
{
 const long SignalCheckInterval = 1000000L;






 long trackerDelay = TaskTrackerDelay * 1000L;
 while (trackerDelay > (SignalCheckInterval - 1))
 {
  if (got_SIGHUP || got_SIGTERM)
  {
   break;
  }
  pg_usleep(SignalCheckInterval);
  trackerDelay -= SignalCheckInterval;
 }
 if (!(got_SIGHUP || got_SIGTERM))
 {
  pg_usleep(trackerDelay);
 }
}
