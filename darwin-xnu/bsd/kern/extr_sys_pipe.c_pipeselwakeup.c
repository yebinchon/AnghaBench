
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct pipe {int pipe_state; int pipe_pgid; TYPE_1__ pipe_sel; } ;


 int EV_RWBYTES ;
 int KNOTE (int *,int) ;
 int PIPE_ASYNC ;
 int PIPE_KNOTE ;
 int PIPE_SEL ;
 int SIGIO ;
 int gsignal (int ,int ) ;
 int postpipeevent (struct pipe*,int ) ;
 int proc_signal (int ,int ) ;
 int selwakeup (TYPE_1__*) ;

__attribute__((used)) static void
pipeselwakeup(struct pipe *cpipe, struct pipe *spipe)
{
 if (cpipe->pipe_state & PIPE_SEL) {
  cpipe->pipe_state &= ~PIPE_SEL;
  selwakeup(&cpipe->pipe_sel);
 }
        if (cpipe->pipe_state & PIPE_KNOTE)
        KNOTE(&cpipe->pipe_sel.si_note, 1);

 postpipeevent(cpipe, EV_RWBYTES);

 if (spipe && (spipe->pipe_state & PIPE_ASYNC) && spipe->pipe_pgid) {
         if (spipe->pipe_pgid < 0)
          gsignal(-spipe->pipe_pgid, SIGIO);
  else
          proc_signal(spipe->pipe_pgid, SIGIO);
        }
}
