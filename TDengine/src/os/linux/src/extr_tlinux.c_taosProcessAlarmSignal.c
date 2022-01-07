
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int timer_t ;
struct TYPE_4__ {int _tid; } ;
struct sigevent {int sigev_signo; TYPE_1__ _sigev_un; int sigev_notify; } ;
struct TYPE_6__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {int tv_nsec; scalar_t__ tv_sec; } ;
struct itimerspec {TYPE_3__ it_interval; TYPE_2__ it_value; } ;
typedef int sigset_t ;


 int CLOCK_REALTIME ;
 int MSECONDS_PER_TICK ;
 int SIGALRM ;
 int SIGEV_THREAD_ID ;
 int SIG_BLOCK ;
 int __NR_gettid ;
 int assert (int ) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ sigwait (int *,int*) ;
 int syscall (int ) ;
 int timer_create (int ,struct sigevent*,int *) ;
 scalar_t__ timer_settime (int ,int ,struct itimerspec*,int *) ;
 int tmrError (char*,...) ;

void *taosProcessAlarmSignal(void *tharg) {

  sigset_t sigset;
  sigemptyset(&sigset);
  sigaddset(&sigset, SIGALRM);
  sigprocmask(SIG_BLOCK, &sigset, ((void*)0));
  void (*callback)(int) = tharg;

  timer_t timerId;
  struct sigevent sevent;
  sevent.sigev_notify = SIGEV_THREAD_ID;
  sevent._sigev_un._tid = syscall(__NR_gettid);
  sevent.sigev_signo = SIGALRM;

  if (timer_create(CLOCK_REALTIME, &sevent, &timerId) == -1) {
    tmrError("Failed to create timer");
  }

  struct itimerspec ts;
  ts.it_value.tv_sec = 0;
  ts.it_value.tv_nsec = 1000000 * MSECONDS_PER_TICK;
  ts.it_interval.tv_sec = 0;
  ts.it_interval.tv_nsec = 1000000 * MSECONDS_PER_TICK;

  if (timer_settime(timerId, 0, &ts, ((void*)0))) {
    tmrError("Failed to init timer");
    return ((void*)0);
  }

  int signo;
  while (1) {
    if (sigwait(&sigset, &signo)) {
      tmrError("Failed to wait signal: number %d", signo);
      continue;
    }


    callback(0);
  }

  assert(0);
  return ((void*)0);
}
