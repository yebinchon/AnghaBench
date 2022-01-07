
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semid_kernel {int label; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct semid_kernel*,int ,int) ;
 int mac_sysvsem_enforce ;
 int sysvsem_check_semctl ;

int
mac_sysvsem_check_semctl(kauth_cred_t cred, struct semid_kernel *semakptr,
    int cmd)
{
 int error;







 MAC_CHECK(sysvsem_check_semctl, cred, semakptr, semakptr->label, cmd);

 return(error);
}
