
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semid_kernel {int label; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct semid_kernel*,int ,size_t) ;
 int mac_sysvsem_enforce ;
 int sysvsem_check_semop ;

int
mac_sysvsem_check_semop(kauth_cred_t cred, struct semid_kernel *semakptr,
    size_t accesstype)
{
 int error;







 MAC_CHECK(sysvsem_check_semop, cred, semakptr, semakptr->label,
     accesstype);

 return(error);
}
