
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef int u_short ;
struct ipc_perm {int mode; scalar_t__ cuid; scalar_t__ uid; scalar_t__ gid; scalar_t__ cgid; } ;
typedef int mode_t ;
typedef int kauth_cred_t ;


 int EACCES ;
 int EPERM ;
 int IPC_M ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 scalar_t__ kauth_cred_getuid (int ) ;
 int kauth_cred_ismember_gid (int ,scalar_t__,int*) ;
 int suser (int ,int *) ;

int
ipcperm(kauth_cred_t cred, struct ipc_perm *perm, int mode_req)
{
 uid_t uid = kauth_cred_getuid(cred);
 int want_mod_controlinfo = (mode_req & IPC_M);
 int is_member;
 mode_t mode_owner = (perm->mode & S_IRWXU);
 mode_t mode_group = (perm->mode & S_IRWXG) << 3;
 mode_t mode_world = (perm->mode & S_IRWXO) << 6;


 if (!suser(cred, (u_short *)((void*)0)))
  return (0);


 if (uid == perm->cuid || uid == perm->uid) {
  if (want_mod_controlinfo)
   return (0);

  return ((mode_req & mode_owner) == mode_req ? 0 : EACCES);
 } else {

  if (want_mod_controlinfo)
   return (EPERM);
 }






 if ((mode_req & mode_group & mode_world) == mode_req) {
  return (0);
 } else {
  if ((mode_req & mode_group) != mode_req) {
   if ((!kauth_cred_ismember_gid(cred, perm->gid, &is_member) && is_member) &&
       ((perm->gid == perm->cgid) ||
        (!kauth_cred_ismember_gid(cred, perm->cgid, &is_member) && is_member))) {
        return (EACCES);
   } else {
    if ((mode_req & mode_world) != mode_req) {
     return (EACCES);
    } else {
     return (0);
    }
   }
  } else {
   if ((!kauth_cred_ismember_gid(cred, perm->gid, &is_member) && is_member) ||
       ((perm->gid != perm->cgid) &&
        (!kauth_cred_ismember_gid(cred, perm->cgid, &is_member) && is_member))) {
        return (0);
   } else {
    if ((mode_req & mode_world) != mode_req) {
     return (EACCES);
    } else {
     return (0);
    }
   }
  }
 }
}
