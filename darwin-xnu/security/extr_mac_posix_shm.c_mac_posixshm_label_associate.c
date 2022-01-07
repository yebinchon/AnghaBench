
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pshminfo {int pshm_label; } ;
typedef int kauth_cred_t ;


 int MAC_PERFORM (int ,int ,struct pshminfo*,int ,char const*) ;
 int posixshm_label_associate ;

void
mac_posixshm_label_associate(kauth_cred_t cred, struct pshminfo *pshm,
    const char *name)
{

 MAC_PERFORM(posixshm_label_associate, cred, pshm, pshm->pshm_label, name);
}
