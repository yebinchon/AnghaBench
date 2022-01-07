
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semid_kernel {int label; } ;


 int MAC_PERFORM (int ,int ) ;
 int sysvsem_label_recycle ;

void
mac_sysvsem_label_recycle(struct semid_kernel *semakptr)
{

 MAC_PERFORM(sysvsem_label_recycle, semakptr->label);
}
