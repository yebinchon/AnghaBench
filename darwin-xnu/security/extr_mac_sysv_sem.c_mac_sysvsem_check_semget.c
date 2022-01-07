
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semid_kernel {int label; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct semid_kernel*,int ) ;
 int mac_sysvsem_enforce ;
 int sysvsem_check_semget ;

int
mac_sysvsem_check_semget(kauth_cred_t cred, struct semid_kernel *semakptr)
{
 int error;







 MAC_CHECK(sysvsem_check_semget, cred, semakptr, semakptr->label);

 return(error);
}
