
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vfs_context_t ;
struct TYPE_2__ {scalar_t__ cnt; } ;
struct pipe {int pipe_state; int pipe_sel; TYPE_1__ pipe_buffer; struct pipe* pipe_peer; } ;
struct fileproc {scalar_t__ f_data; } ;




 scalar_t__ MAX_PIPESIZE (struct pipe*) ;
 scalar_t__ PIPE_BUF ;
 int PIPE_DIRECTW ;
 int PIPE_DRAIN ;
 int PIPE_EOF ;
 int PIPE_LOCK (struct pipe*) ;
 int PIPE_SEL ;
 int PIPE_UNLOCK (struct pipe*) ;
 int PIPE_WSELECT ;
 scalar_t__ mac_pipe_check_select (int ,struct pipe*,int) ;
 int selrecord (int ,int *,void*) ;
 int vfs_context_proc (int ) ;
 int vfs_context_ucred (int ) ;

__attribute__((used)) static int
pipe_select(struct fileproc *fp, int which, void *wql, vfs_context_t ctx)
{
 struct pipe *rpipe = (struct pipe *)fp->f_data;
 struct pipe *wpipe;
 int retnum = 0;

 if (rpipe == ((void*)0) || rpipe == (struct pipe *)-1)
         return (retnum);

 PIPE_LOCK(rpipe);

 wpipe = rpipe->pipe_peer;
        switch (which) {

        case 129:
  if ((rpipe->pipe_state & PIPE_DIRECTW) ||
      (rpipe->pipe_buffer.cnt > 0) ||
      (rpipe->pipe_state & (PIPE_DRAIN | PIPE_EOF))) {

          retnum = 1;
  } else {
          rpipe->pipe_state |= PIPE_SEL;
          selrecord(vfs_context_proc(ctx), &rpipe->pipe_sel, wql);
  }
  break;

        case 128:
  if (wpipe)
   wpipe->pipe_state |= PIPE_WSELECT;
  if (wpipe == ((void*)0) || (wpipe->pipe_state & (PIPE_DRAIN | PIPE_EOF)) ||
      (((wpipe->pipe_state & PIPE_DIRECTW) == 0) &&
       (MAX_PIPESIZE(wpipe) - wpipe->pipe_buffer.cnt) >= PIPE_BUF)) {

          retnum = 1;
  } else {
          wpipe->pipe_state |= PIPE_SEL;
   selrecord(vfs_context_proc(ctx), &wpipe->pipe_sel, wql);
  }
  break;
        case 0:
         rpipe->pipe_state |= PIPE_SEL;
  selrecord(vfs_context_proc(ctx), &rpipe->pipe_sel, wql);
  break;
        }
 PIPE_UNLOCK(rpipe);

        return (retnum);
}
