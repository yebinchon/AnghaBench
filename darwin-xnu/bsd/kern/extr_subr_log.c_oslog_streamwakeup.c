
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FALSE ;
 int lck_spin_lock (int *) ;
 int lck_spin_unlock (int *) ;
 scalar_t__ oslog_is_safe () ;
 int oslog_stream_lock ;
 int oslog_streamwakeup_locked () ;

void
oslog_streamwakeup(void)
{

 if (oslog_is_safe() == FALSE) {
  return;
 }

 lck_spin_lock(&oslog_stream_lock);
 oslog_streamwakeup_locked();
 lck_spin_unlock(&oslog_stream_lock);
}
