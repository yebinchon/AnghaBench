
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int label; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct msg*,int ) ;
 int mac_sysvmsg_enforce ;
 int sysvmsq_check_msgrmid ;

int
mac_sysvmsq_check_msgrmid(kauth_cred_t cred, struct msg *msgptr)
{
 int error;







 MAC_CHECK(sysvmsq_check_msgrmid, cred, msgptr, msgptr->label);

 return(error);
}
