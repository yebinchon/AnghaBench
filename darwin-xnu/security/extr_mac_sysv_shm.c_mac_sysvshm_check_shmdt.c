
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct shmid_kernel {int label; } ;


 int MAC_CHECK (int ,struct ucred*,struct shmid_kernel*,int ) ;
 int mac_sysvshm_enforce ;
 int sysvshm_check_shmdt ;

int
mac_sysvshm_check_shmdt(struct ucred *cred, struct shmid_kernel *shmsegptr)
{
 int error;







 MAC_CHECK(sysvshm_check_shmdt, cred, shmsegptr, shmsegptr->label);

 return(error);
}
