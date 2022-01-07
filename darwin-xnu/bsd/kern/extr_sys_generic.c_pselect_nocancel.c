
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ts64 ;
typedef int ts32 ;
struct uthread {int uu_oldmask; int uu_sigmask; int uu_flag; } ;
struct user64_timespec {int tv_nsec; int tv_sec; } ;
struct user32_timespec {int tv_nsec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct select_nocancel_args {int dummy; } ;
struct pselect_nocancel_args {scalar_t__ ts; scalar_t__ mask; } ;
struct proc {int dummy; } ;
typedef int sigset_t ;
typedef int int32_t ;
typedef int* caddr_t ;


 int EINTR ;
 int EINVAL ;
 scalar_t__ IS_64BIT_PROCESS (struct proc*) ;
 scalar_t__ USER_ADDR_NULL ;
 int UT_SAS_OLDMASK ;
 int clock_absolutetime_interval_to_deadline (int ,int *) ;
 int copyin (scalar_t__,int*,int) ;
 int current_thread () ;
 struct uthread* get_bsdthread_info (int ) ;
 int select_internal (struct proc*,struct select_nocancel_args*,int ,int *) ;
 int sigcantmask ;
 int timespec_is_valid (struct timespec*) ;
 int tstoabstime (struct timespec*) ;

int
pselect_nocancel(struct proc *p, struct pselect_nocancel_args *uap, int32_t *retval)
{
 int err;
 struct uthread *ut;
 uint64_t timeout = 0;

 if (uap->ts) {
  struct timespec ts;

  if (IS_64BIT_PROCESS(p)) {
   struct user64_timespec ts64;
   err = copyin(uap->ts, (caddr_t)&ts64, sizeof(ts64));
   ts.tv_sec = ts64.tv_sec;
   ts.tv_nsec = ts64.tv_nsec;
  } else {
   struct user32_timespec ts32;
   err = copyin(uap->ts, (caddr_t)&ts32, sizeof(ts32));
   ts.tv_sec = ts32.tv_sec;
   ts.tv_nsec = ts32.tv_nsec;
  }
  if (err) {
   return err;
  }

  if (!timespec_is_valid(&ts)) {
   return EINVAL;
  }
  clock_absolutetime_interval_to_deadline(tstoabstime(&ts), &timeout);
 }

 ut = get_bsdthread_info(current_thread());

 if (uap->mask != USER_ADDR_NULL) {

  sigset_t newset;
  err = copyin(uap->mask, &newset, sizeof(sigset_t));
  if (err) {
   return err;
  }
  ut->uu_oldmask = ut->uu_sigmask;
  ut->uu_flag |= UT_SAS_OLDMASK;
  ut->uu_sigmask = (newset & ~sigcantmask);
 }

 err = select_internal(p, (struct select_nocancel_args *)uap, timeout, retval);

 if (err != EINTR && ut->uu_flag & UT_SAS_OLDMASK) {






  ut->uu_sigmask = ut->uu_oldmask;
  ut->uu_oldmask = 0;
  ut->uu_flag &= ~UT_SAS_OLDMASK;
 }

 return err;
}
