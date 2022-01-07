
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat64 {int st_size; int st_gid; int st_uid; int st_mode; } ;
struct stat {int st_size; int st_gid; int st_uid; int st_mode; } ;
struct pshmnode {struct pshminfo* pinfo; } ;
struct pshminfo {int pshm_length; int pshm_gid; int pshm_uid; int pshm_mode; } ;


 int EINVAL ;
 struct pshminfo* PSHMINFO_NULL ;
 int PSHM_SUBSYS_LOCK () ;
 int PSHM_SUBSYS_UNLOCK () ;
 int bzero (struct stat64*,int) ;
 int kauth_cred_get () ;
 int mac_posixshm_check_stat (int ,struct pshminfo*) ;

int
pshm_stat(struct pshmnode *pnode, void *ub, int isstat64)
{
 struct stat *sb = (struct stat *)0;
 struct stat64 * sb64 = (struct stat64 *)0;
 struct pshminfo *pinfo;




 PSHM_SUBSYS_LOCK();
 if ((pinfo = pnode->pinfo) == PSHMINFO_NULL){
  PSHM_SUBSYS_UNLOCK();
  return(EINVAL);
 }
 if (isstat64 != 0) {
  sb64 = (struct stat64 *)ub;
  bzero(sb64, sizeof(struct stat64));
  sb64->st_mode = pinfo->pshm_mode;
  sb64->st_uid = pinfo->pshm_uid;
  sb64->st_gid = pinfo->pshm_gid;
  sb64->st_size = pinfo->pshm_length;
 } else {
  sb = (struct stat *)ub;
  bzero(sb, sizeof(struct stat));
  sb->st_mode = pinfo->pshm_mode;
  sb->st_uid = pinfo->pshm_uid;
  sb->st_gid = pinfo->pshm_gid;
  sb->st_size = pinfo->pshm_length;
 }
 PSHM_SUBSYS_UNLOCK();

 return(0);
}
