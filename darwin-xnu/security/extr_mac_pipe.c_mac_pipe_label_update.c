
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe {int pipe_label; } ;
struct label {int dummy; } ;
typedef int kauth_cred_t ;


 int MAC_PERFORM (int ,int ,struct pipe*,int ,struct label*) ;
 int mac_pipe_check_label_update (int ,struct pipe*,struct label*) ;
 int pipe_label_update ;

int
mac_pipe_label_update(kauth_cred_t cred, struct pipe *cpipe,
    struct label *label)
{
 int error;

 error = mac_pipe_check_label_update(cred, cpipe, label);
 if (error)
  return (error);

 MAC_PERFORM(pipe_label_update, cred, cpipe, cpipe->pipe_label, label);

 return (0);
}
