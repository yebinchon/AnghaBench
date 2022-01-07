
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseminfo {int psem_label; } ;
typedef int kauth_cred_t ;


 int MAC_PERFORM (int ,int ,struct pseminfo*,int ,char const*) ;
 int posixsem_label_associate ;

void
mac_posixsem_label_associate(kauth_cred_t cred, struct pseminfo *psem,
    const char *name)
{

 MAC_PERFORM(posixsem_label_associate, cred, psem, psem->psem_label, name);
}
