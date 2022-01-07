
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct shmid_kernel {int label; } ;


 int MAC_CHECK (int ,struct ucred*,struct shmid_kernel*,int ,int) ;
 int mac_sysvshm_enforce ;
 int sysvshm_check_shmget ;

int
mac_sysvshm_check_shmget(struct ucred *cred, struct shmid_kernel *shmsegptr,
    int shmflg)
{
 int error;







 MAC_CHECK(sysvshm_check_shmget, cred, shmsegptr, shmsegptr->label,
     shmflg);

 return(error);
}
