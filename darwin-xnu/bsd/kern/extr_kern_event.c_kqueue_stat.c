
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user64_kevent {int dummy; } ;
struct user32_kevent {int dummy; } ;
struct stat64 {int st_blksize; void* st_mode; int st_size; } ;
struct stat {int st_blksize; void* st_mode; int st_size; } ;
struct kqueue {int kq_state; int kq_count; } ;
struct kevent_qos_s {int dummy; } ;
struct kevent64_s {int dummy; } ;
typedef int proc_t ;


 scalar_t__ IS_64BIT_PROCESS (int ) ;
 int KQ_KEV64 ;
 int KQ_KEV_QOS ;
 int KQ_WORKQ ;
 void* S_IFIFO ;
 int assert (int) ;
 int bzero (void*,int) ;
 int kqlock (struct kqueue*) ;
 int kqunlock (struct kqueue*) ;

int
kqueue_stat(struct kqueue *kq, void *ub, int isstat64, proc_t p)
{
 assert((kq->kq_state & KQ_WORKQ) == 0);

 kqlock(kq);
 if (isstat64 != 0) {
  struct stat64 *sb64 = (struct stat64 *)ub;

  bzero((void *)sb64, sizeof(*sb64));
  sb64->st_size = kq->kq_count;
  if (kq->kq_state & KQ_KEV_QOS)
   sb64->st_blksize = sizeof(struct kevent_qos_s);
  else if (kq->kq_state & KQ_KEV64)
   sb64->st_blksize = sizeof(struct kevent64_s);
  else if (IS_64BIT_PROCESS(p))
   sb64->st_blksize = sizeof(struct user64_kevent);
  else
   sb64->st_blksize = sizeof(struct user32_kevent);
  sb64->st_mode = S_IFIFO;
 } else {
  struct stat *sb = (struct stat *)ub;

  bzero((void *)sb, sizeof(*sb));
  sb->st_size = kq->kq_count;
  if (kq->kq_state & KQ_KEV_QOS)
   sb->st_blksize = sizeof(struct kevent_qos_s);
  else if (kq->kq_state & KQ_KEV64)
   sb->st_blksize = sizeof(struct kevent64_s);
  else if (IS_64BIT_PROCESS(p))
   sb->st_blksize = sizeof(struct user64_kevent);
  else
   sb->st_blksize = sizeof(struct user32_kevent);
  sb->st_mode = S_IFIFO;
 }
 kqunlock(kq);
 return (0);
}
