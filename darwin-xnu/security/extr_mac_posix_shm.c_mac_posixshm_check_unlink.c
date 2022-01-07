
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pshminfo {int pshm_label; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct pshminfo*,int ,char const*) ;
 int mac_posixshm_enforce ;
 int posixshm_check_unlink ;

int
mac_posixshm_check_unlink(kauth_cred_t cred, struct pshminfo *shm,
    const char *name)
{
 int error = 0;







 MAC_CHECK(posixshm_check_unlink, cred, shm, shm->pshm_label, name);

 return (error);
}
