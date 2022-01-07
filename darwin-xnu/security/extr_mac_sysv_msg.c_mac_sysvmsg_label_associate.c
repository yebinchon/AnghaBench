
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msqid_kernel {int label; } ;
struct msg {int label; } ;
typedef int kauth_cred_t ;


 int MAC_PERFORM (int ,int ,struct msqid_kernel*,int ,struct msg*,int ) ;
 int sysvmsg_label_associate ;

void
mac_sysvmsg_label_associate(kauth_cred_t cred, struct msqid_kernel *msqptr,
    struct msg *msgptr)
{

 MAC_PERFORM(sysvmsg_label_associate, cred, msqptr, msqptr->label,
  msgptr, msgptr->label);
}
