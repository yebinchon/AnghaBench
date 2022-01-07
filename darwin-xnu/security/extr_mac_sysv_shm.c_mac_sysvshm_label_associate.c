
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct shmid_kernel {int label; } ;


 int MAC_PERFORM (int ,struct ucred*,struct shmid_kernel*,int ) ;
 int sysvshm_label_associate ;

void
mac_sysvshm_label_associate(struct ucred *cred, struct shmid_kernel *shmsegptr)
{

 MAC_PERFORM(sysvshm_label_associate, cred, shmsegptr, shmsegptr->label);
}
