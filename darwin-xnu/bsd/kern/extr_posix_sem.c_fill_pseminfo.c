
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vinfo_stat {int vst_size; int vst_gid; int vst_uid; int vst_mode; } ;
struct psemnode {struct pseminfo* pinfo; } ;
struct pseminfo {int psem_flags; int * psem_name; int psem_usecount; int psem_gid; int psem_uid; int psem_mode; } ;
struct psem_info {int * psem_name; struct vinfo_stat psem_stat; } ;


 int EINVAL ;
 struct pseminfo* PSEMINFO_NULL ;
 scalar_t__ PSEMNAMLEN ;
 int PSEM_ALLOCATED ;
 int PSEM_SUBSYS_LOCK () ;
 int PSEM_SUBSYS_UNLOCK () ;
 int bcopy (int *,int *,scalar_t__) ;
 int bzero (struct vinfo_stat*,int) ;

int
fill_pseminfo(struct psemnode *pnode, struct psem_info * info)
{
 struct pseminfo *pinfo;
 struct vinfo_stat *sb;

 PSEM_SUBSYS_LOCK();
 if ((pinfo = pnode->pinfo) == PSEMINFO_NULL){
  PSEM_SUBSYS_UNLOCK();
  return(EINVAL);
 }
 sb = &info->psem_stat;
 bzero(sb, sizeof(struct vinfo_stat));

     sb->vst_mode = pinfo->psem_mode;
     sb->vst_uid = pinfo->psem_uid;
     sb->vst_gid = pinfo->psem_gid;
     sb->vst_size = pinfo->psem_usecount;
 bcopy(&pinfo->psem_name[0], &info->psem_name[0], PSEMNAMLEN+1);

 PSEM_SUBSYS_UNLOCK();
 return(0);
}
