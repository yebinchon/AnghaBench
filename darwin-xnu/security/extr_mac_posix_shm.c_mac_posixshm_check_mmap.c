
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pshminfo {int pshm_label; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct pshminfo*,int ,int,int) ;
 int mac_posixshm_enforce ;
 int posixshm_check_mmap ;

int
mac_posixshm_check_mmap(kauth_cred_t cred, struct pshminfo *shm,
    int prot, int flags)
{
 int error = 0;







 MAC_CHECK(posixshm_check_mmap, cred, shm, shm->pshm_label,
            prot, flags);

 return (error);
}
