
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe {int pipe_label; } ;


 int mac_pipe_label_alloc () ;

void
mac_pipe_label_init(struct pipe *cpipe)
{

 cpipe->pipe_label = mac_pipe_label_alloc();
}
