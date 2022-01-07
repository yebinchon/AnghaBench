
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32_t ;
typedef int (* sys_timeout_handler ) (void*) ;
typedef int sys_sem_t ;
struct sys_timeouts {struct sys_timeout* next; } ;
struct sys_timeout {scalar_t__ time; void* arg; int (* h ) (void*) ;struct sys_timeout* next; } ;


 int LWIP_DEBUGF (int ,char*) ;
 int MEMP_SYS_TIMEOUT ;
 scalar_t__ SYS_ARCH_TIMEOUT ;
 int SYS_DEBUG ;
 int memp_free (int ,struct sys_timeout*) ;
 scalar_t__ sys_arch_sem_wait (int ,scalar_t__) ;
 struct sys_timeouts* sys_arch_timeouts () ;

void
sys_sem_wait(sys_sem_t sem)
{
  u32_t time;
  struct sys_timeouts *timeouts;
  struct sys_timeout *tmptimeout;
  sys_timeout_handler h;
  void *arg;




 again:

  timeouts = sys_arch_timeouts();

  if (!timeouts || !timeouts->next) {
    sys_arch_sem_wait(sem, 0);
  } else {
    if (timeouts->next->time > 0) {
      time = sys_arch_sem_wait(sem, timeouts->next->time);
    } else {
      time = SYS_ARCH_TIMEOUT;
    }

    if (time == SYS_ARCH_TIMEOUT) {



      tmptimeout = timeouts->next;
      timeouts->next = tmptimeout->next;
      h = tmptimeout->h;
      arg = tmptimeout->arg;
      memp_free(MEMP_SYS_TIMEOUT, tmptimeout);
      if (h != ((void*)0)) {
        LWIP_DEBUGF(SYS_DEBUG, ("ssw h=%p(%p)\n", (void *)h, (void *)arg));
        h(arg);
      }


      goto again;
    } else {



      if (time <= timeouts->next->time) {
  timeouts->next->time -= time;
      } else {
  timeouts->next->time = 0;
      }
    }

  }
}
