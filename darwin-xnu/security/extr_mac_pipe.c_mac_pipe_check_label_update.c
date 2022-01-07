
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe {int pipe_label; } ;
struct label {int dummy; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct pipe*,int ,struct label*) ;
 int mac_pipe_enforce ;
 int pipe_check_label_update ;

__attribute__((used)) static int
mac_pipe_check_label_update(kauth_cred_t cred, struct pipe *cpipe,
    struct label *newlabel)
{
 int error;







 MAC_CHECK(pipe_check_label_update, cred, cpipe, cpipe->pipe_label, newlabel);

 return (error);
}
