
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmid_kernel {int label; } ;


 int MAC_PERFORM (int ,int ) ;
 int sysvshm_label_recycle ;

void
mac_sysvshm_label_recycle(struct shmid_kernel *shmsegptr)
{

 MAC_PERFORM(sysvshm_label_recycle, shmsegptr->label);
}
