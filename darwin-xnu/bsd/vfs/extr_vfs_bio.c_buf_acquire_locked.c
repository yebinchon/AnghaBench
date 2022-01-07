
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct timespec {int tv_sec; int tv_nsec; } ;
typedef scalar_t__ errno_t ;
typedef int caddr_t ;
typedef TYPE_1__* buf_t ;
struct TYPE_4__ {int b_tag; int b_owner; int b_lflags; int b_flags; } ;


 int BAC_NOWAIT ;
 int BAC_REMOVE ;
 int BAC_SKIP_LOCKED ;
 int BAC_SKIP_NONLOCKED ;
 int BL_BUSY ;
 int BL_WANTED ;
 int B_LOCKED ;
 scalar_t__ EAGAIN ;
 scalar_t__ EBUSY ;
 scalar_t__ EDEADLK ;
 scalar_t__ ISSET (int ,int ) ;
 int NSEC_PER_USEC ;
 int PRIBIO ;
 int SET (int ,int ) ;
 int bremfree_locked (TYPE_1__*) ;
 int buf_busycount ;
 int buf_mtxp ;
 int current_thread () ;
 scalar_t__ msleep (int ,int ,int,char*,struct timespec*) ;

__attribute__((used)) static errno_t
buf_acquire_locked(buf_t bp, int flags, int slpflag, int slptimeo)
{
 errno_t error;
 struct timespec ts;

 if (ISSET(bp->b_flags, B_LOCKED)) {
         if ((flags & BAC_SKIP_LOCKED))
   return (EDEADLK);
 } else {
         if ((flags & BAC_SKIP_NONLOCKED))
   return (EDEADLK);
 }
        if (ISSET(bp->b_lflags, BL_BUSY)) {





         if (flags & BAC_NOWAIT)
   return (EBUSY);
         SET(bp->b_lflags, BL_WANTED);


  ts.tv_sec = (slptimeo/100);
  ts.tv_nsec = (slptimeo % 100) * 10 * NSEC_PER_USEC * 1000;
  error = msleep((caddr_t)bp, buf_mtxp, slpflag | (PRIBIO + 1), "buf_acquire", &ts);

  if (error)
   return (error);
  return (EAGAIN);
 }
 if (flags & BAC_REMOVE)
         bremfree_locked(bp);
 SET(bp->b_lflags, BL_BUSY);
 buf_busycount++;





 return (0);
}
