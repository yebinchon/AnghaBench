
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semid_kernel {int * label; } ;


 int mac_sysv_sem_label_free (int *) ;

void
mac_sysvsem_label_destroy(struct semid_kernel *semakptr)
{

 mac_sysv_sem_label_free(semakptr->label);
 semakptr->label = ((void*)0);
}
