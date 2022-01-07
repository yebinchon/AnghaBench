
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe {int dummy; } ;
struct kevent_internal_s {int dummy; } ;
struct knote {int kn_flags; scalar_t__ kn_data; scalar_t__ kn_fflags; struct kevent_internal_s kn_kevent; TYPE_1__* kn_fp; } ;
struct filt_process_s {int dummy; } ;
struct TYPE_2__ {scalar_t__ f_data; } ;


 int EV_CLEAR ;
 int PIPE_LOCK (struct pipe*) ;
 int PIPE_UNLOCK (struct pipe*) ;
 int filt_pipewrite_common (struct knote*,struct pipe*) ;

__attribute__((used)) static int
filt_pipewriteprocess(struct knote *kn, struct filt_process_s *data, struct kevent_internal_s *kev)
{
#pragma unused(data)
 struct pipe *rpipe = (struct pipe *)kn->kn_fp->f_data;
 int res;

 PIPE_LOCK(rpipe);
 res = filt_pipewrite_common(kn, rpipe);
 if (res) {
  *kev = kn->kn_kevent;
  if (kn->kn_flags & EV_CLEAR) {
   kn->kn_fflags = 0;
   kn->kn_data = 0;
  }
 }
 PIPE_UNLOCK(rpipe);

 return res;
}
