
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe {int pipe_label; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct pipe*,int ) ;
 int mac_pipe_enforce ;
 int pipe_check_stat ;

int
mac_pipe_check_stat(kauth_cred_t cred, struct pipe *cpipe)
{
 int error;







 MAC_CHECK(pipe_check_stat, cred, cpipe, cpipe->pipe_label);

 return (error);
}
