
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe {int dummy; } ;
struct knote {int kn_sdata; int kn_sfflags; TYPE_1__* kn_fp; } ;
struct kevent_internal_s {int data; int fflags; } ;
struct TYPE_2__ {scalar_t__ f_data; } ;


 int PIPE_LOCK (struct pipe*) ;
 int PIPE_UNLOCK (struct pipe*) ;
 int filt_pipewrite_common (struct knote*,struct pipe*) ;

__attribute__((used)) static int
filt_pipewritetouch(struct knote *kn, struct kevent_internal_s *kev)
{
 struct pipe *rpipe = (struct pipe *)kn->kn_fp->f_data;
 int res;

 PIPE_LOCK(rpipe);


 kn->kn_sfflags = kev->fflags;
 kn->kn_sdata = kev->data;


 res = filt_pipewrite_common(kn, rpipe);

 PIPE_UNLOCK(rpipe);

 return res;
}
