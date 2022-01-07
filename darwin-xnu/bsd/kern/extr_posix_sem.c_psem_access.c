
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseminfo {int psem_mode; int psem_gid; int psem_uid; } ;
typedef int kauth_cred_t ;


 int FREAD ;
 int FWRITE ;
 int S_IRUSR ;
 int S_IWUSR ;
 int posix_cred_access (int ,int ,int ,int ,int) ;
 int suser (int ,int *) ;

__attribute__((used)) static int
psem_access(struct pseminfo *pinfo, int mode, kauth_cred_t cred)
{
 int mode_req = ((mode & FREAD) ? S_IRUSR : 0) |
         ((mode & FWRITE) ? S_IWUSR : 0);


 if (!suser(cred, ((void*)0)))
  return (0);

 return(posix_cred_access(cred, pinfo->psem_uid, pinfo->psem_gid, pinfo->psem_mode, mode_req));
}
