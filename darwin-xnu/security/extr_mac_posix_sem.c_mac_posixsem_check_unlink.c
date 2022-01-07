
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseminfo {int psem_label; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct pseminfo*,int ,char const*) ;
 int mac_posixsem_enforce ;
 int posixsem_check_unlink ;

int
mac_posixsem_check_unlink(kauth_cred_t cred, struct pseminfo *psem,
    const char *name)
{
 int error;







 MAC_CHECK(posixsem_check_unlink, cred, psem, psem->psem_label, name);

 return (error);
}
