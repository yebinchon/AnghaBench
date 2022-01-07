
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe {int pipe_label; } ;
typedef int kauth_cred_t ;


 int MAC_PERFORM (int ,int ,struct pipe*,int ) ;
 int pipe_label_associate ;

void
mac_pipe_label_associate(kauth_cred_t cred, struct pipe *cpipe)
{

 MAC_PERFORM(pipe_label_associate, cred, cpipe, cpipe->pipe_label);
}
