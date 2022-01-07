
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cnt; scalar_t__ size; } ;
struct pipe {int pipe_state; TYPE_1__ pipe_buffer; struct pipe* pipe_peer; } ;
struct knote {scalar_t__ kn_data; int kn_sfflags; scalar_t__ kn_sdata; int kn_flags; } ;
typedef scalar_t__ int64_t ;


 int EV_EOF ;
 scalar_t__ MAX_PIPESIZE (struct pipe*) ;
 int NOTE_LOWAT ;
 int PIPE_DRAIN ;
 int PIPE_EOF ;

__attribute__((used)) static int
filt_piperead_common(struct knote *kn, struct pipe *rpipe)
{
 struct pipe *wpipe;
 int retval;






 wpipe = rpipe->pipe_peer;
 kn->kn_data = rpipe->pipe_buffer.cnt;
 if ((rpipe->pipe_state & (PIPE_DRAIN | PIPE_EOF)) ||
     (wpipe == ((void*)0)) || (wpipe->pipe_state & (PIPE_DRAIN | PIPE_EOF))) {
  kn->kn_flags |= EV_EOF;
  retval = 1;
 } else {
  int64_t lowwat = 1;
  if (kn->kn_sfflags & NOTE_LOWAT) {
   if (rpipe->pipe_buffer.size && kn->kn_sdata > MAX_PIPESIZE(rpipe))
    lowwat = MAX_PIPESIZE(rpipe);
   else if (kn->kn_sdata > lowwat)
    lowwat = kn->kn_sdata;
  }
  retval = kn->kn_data >= lowwat;
 }
 return (retval);
}
