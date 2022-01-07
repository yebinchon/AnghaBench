
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe {int dummy; } ;
struct knote {int kn_sfflags; int kn_sdata; TYPE_1__* kn_fp; } ;
struct kevent_internal_s {int fflags; int data; } ;
struct TYPE_2__ {scalar_t__ f_data; } ;


 int PIPE_LOCK (struct pipe*) ;
 int PIPE_UNLOCK (struct pipe*) ;
 int filt_piperead_common (struct knote*,struct pipe*) ;

__attribute__((used)) static int
filt_pipereadtouch(struct knote *kn, struct kevent_internal_s *kev)
{
 struct pipe *rpipe = (struct pipe *)kn->kn_fp->f_data;
 int retval;

 PIPE_LOCK(rpipe);


 kn->kn_sdata = kev->data;
 kn->kn_sfflags = kev->fflags;


 retval = filt_piperead_common(kn, rpipe);

 PIPE_UNLOCK(rpipe);

 return retval;
}
