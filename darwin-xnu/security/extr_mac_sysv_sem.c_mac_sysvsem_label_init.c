
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semid_kernel {int label; } ;


 int mac_sysv_sem_label_alloc () ;

void
mac_sysvsem_label_init(struct semid_kernel *semakptr)
{

 semakptr->label = mac_sysv_sem_label_alloc();
}
