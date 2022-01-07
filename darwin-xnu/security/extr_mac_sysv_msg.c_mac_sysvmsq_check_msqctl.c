
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msqid_kernel {int label; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct msqid_kernel*,int ,int) ;
 int mac_sysvmsg_enforce ;
 int sysvmsq_check_msqctl ;

int
mac_sysvmsq_check_msqctl(kauth_cred_t cred, struct msqid_kernel *msqptr,
    int cmd)
{
 int error;







 MAC_CHECK(sysvmsq_check_msqctl, cred, msqptr, msqptr->label, cmd);

 return(error);
}
