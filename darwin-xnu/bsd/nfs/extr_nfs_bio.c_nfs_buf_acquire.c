
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
struct nfsbuf {int nb_lflags; } ;
typedef scalar_t__ errno_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EBUSY ;
 scalar_t__ ISSET (int ,int ) ;
 int NBAC_NOWAIT ;
 int NBAC_REMOVE ;
 int NBL_BUSY ;
 int NBL_WANTED ;
 int NSEC_PER_USEC ;
 int PRIBIO ;
 int SET (int ,int ) ;
 scalar_t__ msleep (struct nfsbuf*,int ,int,char*,struct timespec*) ;
 int nfs_buf_mutex ;
 int nfs_buf_remfree (struct nfsbuf*) ;

errno_t
nfs_buf_acquire(struct nfsbuf *bp, int flags, int slpflag, int slptimeo)
{
 errno_t error;
 struct timespec ts;

 if (ISSET(bp->nb_lflags, NBL_BUSY)) {





         if (flags & NBAC_NOWAIT)
   return (EBUSY);
         SET(bp->nb_lflags, NBL_WANTED);

  ts.tv_sec = (slptimeo/100);

  ts.tv_nsec = (slptimeo % 100) * 10 * NSEC_PER_USEC * 1000;

  error = msleep(bp, nfs_buf_mutex, slpflag | (PRIBIO + 1),
   "nfs_buf_acquire", &ts);
  if (error)
   return (error);
  return (EAGAIN);
 }
 if (flags & NBAC_REMOVE)
         nfs_buf_remfree(bp);
 SET(bp->nb_lflags, NBL_BUSY);

 return (0);
}
