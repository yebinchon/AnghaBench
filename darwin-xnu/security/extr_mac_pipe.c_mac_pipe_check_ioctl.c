
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct pipe {int pipe_label; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct pipe*,int ,int ) ;
 int mac_pipe_enforce ;
 int pipe_check_ioctl ;

int
mac_pipe_check_ioctl(kauth_cred_t cred, struct pipe *cpipe, u_int cmd)
{
 int error;







 MAC_CHECK(pipe_check_ioctl, cred, cpipe, cpipe->pipe_label, cmd);

 return (error);
}
