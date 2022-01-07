
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct pipe {int pipe_state; struct pipe* pipe_peer; TYPE_1__ pipe_sel; int * pipe_label; scalar_t__ pipe_busy; } ;


 int EV_RCLOSED ;
 int KNOTE (int *,int) ;
 int PIPE_DRAIN ;
 int PIPE_EOF ;
 int PIPE_KNOTE ;
 int PIPE_LOCK (struct pipe*) ;
 int * PIPE_MTX (struct pipe*) ;
 int PIPE_UNLOCK (struct pipe*) ;
 int PIPE_WANT ;
 int PIPE_WSELECT ;
 int PRIBIO ;
 int evpipefree (struct pipe*) ;
 int lck_mtx_free (int *,int ) ;
 int mac_pipe_label_destroy (struct pipe*) ;
 int msleep (struct pipe*,int *,int ,char*,int ) ;
 int pipe_free_kmem (struct pipe*) ;
 int pipe_garbage_collect (struct pipe*) ;
 int pipe_mtx_grp ;
 int pipe_zone ;
 int pipeselwakeup (struct pipe*,struct pipe*) ;
 int postpipeevent (struct pipe*,int ) ;
 int wakeup (struct pipe*) ;
 int zfree (int ,struct pipe*) ;

__attribute__((used)) static void
pipeclose(struct pipe *cpipe)
{
 struct pipe *ppipe;

 if (cpipe == ((void*)0))
  return;

 if (PIPE_MTX(cpipe) != ((void*)0))
  PIPE_LOCK(cpipe);






 cpipe->pipe_state &= ~PIPE_DRAIN;
 cpipe->pipe_state |= PIPE_EOF;
 pipeselwakeup(cpipe, cpipe);

 while (cpipe->pipe_busy) {
  cpipe->pipe_state |= PIPE_WANT;

  wakeup(cpipe);
   msleep(cpipe, PIPE_MTX(cpipe), PRIBIO, "pipecl", 0);
 }
 if ((ppipe = cpipe->pipe_peer) != ((void*)0)) {

  ppipe->pipe_state &= ~(PIPE_DRAIN);
  ppipe->pipe_state |= PIPE_EOF;

  pipeselwakeup(ppipe, ppipe);
  wakeup(ppipe);

  if (cpipe->pipe_state & PIPE_KNOTE)
          KNOTE(&ppipe->pipe_sel.si_note, 1);

  postpipeevent(ppipe, EV_RCLOSED);

  ppipe->pipe_peer = ((void*)0);
 }
 evpipefree(cpipe);




 if (PIPE_MTX(cpipe) != ((void*)0)) {
  if (ppipe != ((void*)0)) {




   PIPE_UNLOCK(cpipe);
  } else {




   PIPE_UNLOCK(cpipe);
   lck_mtx_free(PIPE_MTX(cpipe), pipe_mtx_grp);
  }
 }
 pipe_free_kmem(cpipe);
 if (cpipe->pipe_state & PIPE_WSELECT) {
  pipe_garbage_collect(cpipe);
 } else {
  zfree(pipe_zone, cpipe);
  pipe_garbage_collect(((void*)0));
 }

}
