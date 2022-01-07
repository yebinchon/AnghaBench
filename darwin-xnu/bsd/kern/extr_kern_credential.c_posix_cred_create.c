
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp_cred ;
struct ucred {int cr_posix; } ;
typedef int * posix_cred_t ;
typedef int kauth_cred_t ;


 int bzero (struct ucred*,int) ;
 int kauth_cred_create (struct ucred*) ;

kauth_cred_t
posix_cred_create(posix_cred_t pcred)
{
 struct ucred temp_cred;

 bzero(&temp_cred, sizeof(temp_cred));
 temp_cred.cr_posix = *pcred;

 return kauth_cred_create(&temp_cred);
}
