
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gid_t ;


 int kauth_cred_get () ;
 int kauth_cred_getrgid (int ) ;

gid_t
kauth_getrgid(void)
{
 return(kauth_cred_getrgid(kauth_cred_get()));
}
