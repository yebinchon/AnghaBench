
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msqid_kernel {int label; } ;
struct msg {int label; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct msg*,int ,struct msqid_kernel*,int ) ;
 int mac_sysvmsg_enforce ;
 int sysvmsq_check_enqueue ;

int
mac_sysvmsq_check_enqueue(kauth_cred_t cred, struct msg *msgptr,
 struct msqid_kernel *msqptr)
{
 int error;







 MAC_CHECK(sysvmsq_check_enqueue, cred, msgptr, msgptr->label, msqptr,
     msqptr->label);

 return(error);
}
