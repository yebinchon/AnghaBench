
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semid_kernel {int label; } ;
typedef int kauth_cred_t ;


 int MAC_PERFORM (int ,int ,struct semid_kernel*,int ) ;
 int sysvsem_label_associate ;

void
mac_sysvsem_label_associate(kauth_cred_t cred, struct semid_kernel *semakptr)
{

 MAC_PERFORM(sysvsem_label_associate, cred, semakptr, semakptr->label);
}
