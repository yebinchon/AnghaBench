
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
 scalar_t__ PIPE_BUF ;
 int PIPE_DRAIN ;
 int PIPE_EOF ;

__attribute__((used)) static int
filt_pipewrite_common(struct knote *kn, struct pipe *rpipe)
{
 struct pipe *wpipe;





 wpipe = rpipe->pipe_peer;

 if ((wpipe == ((void*)0)) || (wpipe->pipe_state & (PIPE_DRAIN | PIPE_EOF))) {
  kn->kn_data = 0;
  kn->kn_flags |= EV_EOF;
  return (1);
 }
 kn->kn_data = MAX_PIPESIZE(wpipe) - wpipe->pipe_buffer.cnt;

 int64_t lowwat = PIPE_BUF;
 if (kn->kn_sfflags & NOTE_LOWAT) {
  if (wpipe->pipe_buffer.size && kn->kn_sdata > MAX_PIPESIZE(wpipe))
   lowwat = MAX_PIPESIZE(wpipe);
  else if (kn->kn_sdata > lowwat)
   lowwat = kn->kn_sdata;
 }

 return (kn->kn_data >= lowwat);
}
