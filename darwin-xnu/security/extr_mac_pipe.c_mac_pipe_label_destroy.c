
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe {int * pipe_label; } ;


 int mac_pipe_label_free (int *) ;

void
mac_pipe_label_destroy(struct pipe *cpipe)
{

 mac_pipe_label_free(cpipe->pipe_label);
 cpipe->pipe_label = ((void*)0);
}
