
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;


 int kauth_cred_issuser (int ) ;
 int vfs_context_ucred (int ) ;

int
vfs_context_issuser(vfs_context_t ctx)
{
 return(kauth_cred_issuser(vfs_context_ucred(ctx)));
}
