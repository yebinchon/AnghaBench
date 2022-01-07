
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vinfo_stat {int vst_size; int vst_gid; int vst_uid; int vst_mode; } ;
struct pshmnode {int mapp_addr; struct pshminfo* pinfo; } ;
struct pshminfo {int * pshm_name; int pshm_length; int pshm_gid; int pshm_uid; int pshm_mode; } ;
struct pshm_info {int * pshm_name; int pshm_mappaddr; struct vinfo_stat pshm_stat; } ;


 int EINVAL ;
 struct pshminfo* PSHMINFO_NULL ;
 scalar_t__ PSHMNAMLEN ;
 int PSHM_SUBSYS_LOCK () ;
 int PSHM_SUBSYS_UNLOCK () ;
 int bcopy (int *,int *,scalar_t__) ;
 int bzero (struct vinfo_stat*,int) ;

int
fill_pshminfo(struct pshmnode * pshm, struct pshm_info * info)
{
 struct pshminfo *pinfo;
 struct vinfo_stat *sb;

 PSHM_SUBSYS_LOCK();
 if ((pinfo = pshm->pinfo) == PSHMINFO_NULL){
  PSHM_SUBSYS_UNLOCK();
  return(EINVAL);
 }

 sb = &info->pshm_stat;

 bzero(sb, sizeof(struct vinfo_stat));
 sb->vst_mode = pinfo->pshm_mode;
 sb->vst_uid = pinfo->pshm_uid;
 sb->vst_gid = pinfo->pshm_gid;
 sb->vst_size = pinfo->pshm_length;

 info->pshm_mappaddr = pshm->mapp_addr;
 bcopy(&pinfo->pshm_name[0], &info->pshm_name[0], PSHMNAMLEN+1);

 PSHM_SUBSYS_UNLOCK();
 return(0);
}
