
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msqid_kernel {int label; } ;


 int MAC_PERFORM (int ,int ) ;
 int sysvmsq_label_recycle ;

void
mac_sysvmsq_label_recycle(struct msqid_kernel *msqptr)
{

 MAC_PERFORM(sysvmsq_label_recycle, msqptr->label);
}
