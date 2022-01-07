
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe {int pipe_label; } ;
struct knote {int dummy; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct knote*,struct pipe*,int ) ;
 int mac_pipe_enforce ;
 int pipe_check_kqfilter ;

int
mac_pipe_check_kqfilter(kauth_cred_t cred, struct knote *kn,
    struct pipe *cpipe)
{
 int error;






 MAC_CHECK(pipe_check_kqfilter, cred, kn, cpipe, cpipe->pipe_label);
 return (error);
}
