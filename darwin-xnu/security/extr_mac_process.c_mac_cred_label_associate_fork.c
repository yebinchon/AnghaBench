
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;
typedef int kauth_cred_t ;


 int MAC_PERFORM (int ,int ,int ) ;
 int cred_label_associate_fork ;

void
mac_cred_label_associate_fork(kauth_cred_t cred, proc_t proc)
{
 MAC_PERFORM(cred_label_associate_fork, cred, proc);
}
