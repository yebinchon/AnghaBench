
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmid_kernel {int * label; } ;


 int mac_sysv_shm_label_free (int *) ;

void
mac_sysvshm_label_destroy(struct shmid_kernel *shmsegptr)
{

 mac_sysv_shm_label_free(shmsegptr->label);
 shmsegptr->label = ((void*)0);
}
