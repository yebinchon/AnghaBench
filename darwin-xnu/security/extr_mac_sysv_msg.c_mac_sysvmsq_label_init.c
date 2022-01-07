
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msqid_kernel {int label; } ;


 int mac_sysv_msgqueue_label_alloc () ;

void
mac_sysvmsq_label_init(struct msqid_kernel *msqptr)
{

 msqptr->label = mac_sysv_msgqueue_label_alloc();
}
