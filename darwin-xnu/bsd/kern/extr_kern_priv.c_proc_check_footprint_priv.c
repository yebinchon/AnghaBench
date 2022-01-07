
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRIV_VM_FOOTPRINT_LIMIT ;
 int kauth_cred_get () ;
 int priv_check_cred (int ,int ,int ) ;

int
proc_check_footprint_priv(void)
{
 return (priv_check_cred(kauth_cred_get(), PRIV_VM_FOOTPRINT_LIMIT, 0));
}
