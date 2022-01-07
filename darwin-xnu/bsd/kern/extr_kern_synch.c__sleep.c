
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int64_t ;
typedef int thread_t ;
typedef scalar_t__ thread_continue_t ;
struct uthread {char const* uu_wmesg; int (* uu_continuation ) (int) ;int uu_pri; int uu_timo; int uu_flag; int * uu_wchan; int * uu_mtx; } ;
struct proc {int p_priority; TYPE_3__* p_sigacts; TYPE_2__* p_stats; } ;
typedef int lck_mtx_t ;
typedef int * caddr_t ;
struct TYPE_6__ {int ps_sigintr; } ;
struct TYPE_4__ {int ru_nvcsw; } ;
struct TYPE_5__ {TYPE_1__ p_ru; } ;


 int CURSIG (struct proc*) ;
 int EINTR ;
 int ERESTART ;
 int EWOULDBLOCK ;
 scalar_t__ KERN_FAILURE ;
 int LCK_SLEEP_DEFAULT ;
 int LCK_SLEEP_SPIN ;
 int LCK_SLEEP_UNLOCK ;
 int OSIncrementAtomicLong (int *) ;
 int PCATCH ;
 int PDROP ;
 int PRIMASK ;
 int PSPIN ;
 scalar_t__ SHOULDissignal (struct proc*,struct uthread*) ;
 int THREAD_ABORTSAFE ;

 scalar_t__ THREAD_CONTINUE_NULL ;



 int THREAD_UNINT ;
 int UT_CANCEL ;
 int UT_CANCELDISABLE ;
 int UT_CANCELED ;
 scalar_t__ _sleep_continue ;
 int act_set_astbsd (int ) ;
 int assert_wait_deadline (int *,int,int ) ;
 scalar_t__ clear_wait (int ,int) ;
 struct proc* current_proc () ;
 int current_thread () ;
 struct uthread* get_bsdthread_info (int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_sleep (int *,int,int *,int) ;
 int lck_mtx_sleep_deadline (int *,int,int *,int,int ) ;
 int lck_mtx_unlock (int *) ;
 int sigmask (int) ;
 int thread_block (scalar_t__) ;
 scalar_t__ thread_should_abort (int ) ;

__attribute__((used)) static int
_sleep(
 caddr_t chan,
 int pri,
 const char *wmsg,
 u_int64_t abstime,
 int (*continuation)(int),
        lck_mtx_t *mtx)
{
 struct proc *p;
 thread_t self = current_thread();
 struct uthread * ut;
 int sig, catch;
 int dropmutex = pri & PDROP;
 int spinmutex = pri & PSPIN;
 int wait_result;
 int error = 0;

 ut = get_bsdthread_info(self);

 p = current_proc();
 p->p_priority = pri & PRIMASK;

 if (p->p_stats != ((void*)0))
  OSIncrementAtomicLong(&p->p_stats->p_ru.ru_nvcsw);

 if (pri & PCATCH)
  catch = THREAD_ABORTSAFE;
 else
  catch = THREAD_UNINT;


 ut->uu_wchan = chan;
 ut->uu_wmesg = wmsg ? wmsg : "unknown";

 if (mtx != ((void*)0) && chan != ((void*)0) && (thread_continue_t)continuation == THREAD_CONTINUE_NULL) {
  int flags;

  if (dropmutex)
   flags = LCK_SLEEP_UNLOCK;
  else
   flags = LCK_SLEEP_DEFAULT;

  if (spinmutex)
   flags |= LCK_SLEEP_SPIN;

  if (abstime)
   wait_result = lck_mtx_sleep_deadline(mtx, flags, chan, catch, abstime);
  else
   wait_result = lck_mtx_sleep(mtx, flags, chan, catch);
 }
 else {
  if (chan != ((void*)0))
   assert_wait_deadline(chan, catch, abstime);
  if (mtx)
   lck_mtx_unlock(mtx);

  if (catch == THREAD_ABORTSAFE) {
   if (SHOULDissignal(p,ut)) {
    if ((sig = CURSIG(p)) != 0) {
     if (clear_wait(self, 130) == KERN_FAILURE)
      goto block;
     if (p->p_sigacts->ps_sigintr & sigmask(sig))
      error = EINTR;
     else
      error = ERESTART;
     if (mtx && !dropmutex) {
      if (spinmutex)
       lck_mtx_lock_spin(mtx);
      else
       lck_mtx_lock(mtx);
     }
     goto out;
    }
   }
   if (thread_should_abort(self)) {
    if (clear_wait(self, 130) == KERN_FAILURE)
     goto block;
    error = EINTR;

    if (mtx && !dropmutex) {
     if (spinmutex)
      lck_mtx_lock_spin(mtx);
     else
      lck_mtx_lock(mtx);
    }
    goto out;
   }
  }


block:
  if ((thread_continue_t)continuation != THREAD_CONTINUE_NULL) {
          ut->uu_continuation = continuation;
   ut->uu_pri = pri;
   ut->uu_timo = abstime? 1: 0;
   ut->uu_mtx = mtx;
   (void) thread_block(_sleep_continue);

  }

  wait_result = thread_block(THREAD_CONTINUE_NULL);

  if (mtx && !dropmutex) {
   if (spinmutex)
    lck_mtx_lock_spin(mtx);
   else
    lck_mtx_lock(mtx);
  }
 }

 switch (wait_result) {
  case 128:
   error = EWOULDBLOCK;
   break;
  case 131:
  case 129:





   if (catch != THREAD_ABORTSAFE)
    break;

  case 130:
   if (catch == THREAD_ABORTSAFE) {
    if (thread_should_abort(self)) {
     error = EINTR;
    } else if (SHOULDissignal(p, ut)) {
     if ((sig = CURSIG(p)) != 0) {
      if (p->p_sigacts->ps_sigintr & sigmask(sig))
       error = EINTR;
      else
       error = ERESTART;
     }
     if (thread_should_abort(self)) {
      error = EINTR;
     }
    } else if( (ut->uu_flag & ( UT_CANCELDISABLE | UT_CANCEL | UT_CANCELED)) == UT_CANCEL) {

                                        error = EINTR;
                                }
   } else
    error = EINTR;
   break;
 }
out:
 if (error == EINTR || error == ERESTART)
  act_set_astbsd(self);
 ut->uu_wchan = ((void*)0);
 ut->uu_wmesg = ((void*)0);

 return (error);
}
