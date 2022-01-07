
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,char const*) ;
 int mac_posixshm_enforce ;
 int posixshm_check_create ;

int
mac_posixshm_check_create(kauth_cred_t cred, const char *name)
{
 int error = 0;







 MAC_CHECK(posixshm_check_create, cred, name);

 return error;
}
