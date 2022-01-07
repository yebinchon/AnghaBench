
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct user64_timeval {int tv_usec; int tv_sec; } ;
struct user32_timeval {int tv_usec; int tv_sec; } ;
struct timeval {int tv_usec; int tv_sec; } ;
struct select_nocancel_args {scalar_t__ tv; } ;
struct proc {int dummy; } ;
typedef int int32_t ;
typedef int caddr_t ;
typedef int atv64 ;
typedef int atv32 ;


 int EINVAL ;
 scalar_t__ IS_64BIT_PROCESS (struct proc*) ;
 int clock_absolutetime_interval_to_deadline (int ,int *) ;
 int copyin (scalar_t__,int ,int) ;
 scalar_t__ itimerfix (struct timeval*) ;
 int select_internal (struct proc*,struct select_nocancel_args*,int ,int *) ;
 int tvtoabstime (struct timeval*) ;

int
select_nocancel(struct proc *p, struct select_nocancel_args *uap, int32_t *retval)
{
 uint64_t timeout = 0;

 if (uap->tv) {
  int err;
  struct timeval atv;
  if (IS_64BIT_PROCESS(p)) {
   struct user64_timeval atv64;
   err = copyin(uap->tv, (caddr_t)&atv64, sizeof(atv64));

   atv.tv_sec = atv64.tv_sec;
   atv.tv_usec = atv64.tv_usec;
  } else {
   struct user32_timeval atv32;
   err = copyin(uap->tv, (caddr_t)&atv32, sizeof(atv32));
   atv.tv_sec = atv32.tv_sec;
   atv.tv_usec = atv32.tv_usec;
  }
  if (err)
   return err;

  if (itimerfix(&atv)) {
   err = EINVAL;
   return err;
  }

  clock_absolutetime_interval_to_deadline(tvtoabstime(&atv), &timeout);
 }

 return select_internal(p, uap, timeout, retval);
}
