
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe {int pipe_state; } ;


 int PIPE_LOCKFL ;
 int PIPE_LWANT ;
 int wakeup (struct pipe*) ;

__attribute__((used)) static inline void
pipeio_unlock(struct pipe *cpipe)
{
 cpipe->pipe_state &= ~PIPE_LOCKFL;
 if (cpipe->pipe_state & PIPE_LWANT) {
  cpipe->pipe_state &= ~PIPE_LWANT;
  wakeup(cpipe);
 }
}
