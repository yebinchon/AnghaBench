
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseminfo {int psem_flags; int psem_usecount; int psem_mode; int psem_gid; int psem_uid; } ;
struct psemcache {int psem_flags; int psem_usecount; int psem_mode; int psem_gid; int psem_uid; } ;


 int AUDIT_ARG (int ,int ,int ,int ) ;
 int EINVAL ;
 int FREE (struct pseminfo*,int ) ;
 int M_SHM ;
 int PSEM_ALLOCATED ;
 int PSEM_DEFINED ;
 int PSEM_INDELETE ;
 int PSEM_REMOVED ;
 int PSEM_SUBSYS_ASSERT_HELD () ;
 int posix_ipc_perm ;
 int psem_cache_delete (struct pseminfo*) ;
 int psem_delete (struct pseminfo*) ;

__attribute__((used)) static int
psem_unlink_internal(struct pseminfo *pinfo, struct psemcache *pcache)
{
 PSEM_SUBSYS_ASSERT_HELD();

 if (!pinfo || !pcache)
  return EINVAL;

 if ((pinfo->psem_flags & (PSEM_DEFINED | PSEM_ALLOCATED)) == 0)
  return EINVAL;

 if (pinfo->psem_flags & PSEM_INDELETE)
  return 0;

 AUDIT_ARG(posix_ipc_perm, pinfo->psem_uid, pinfo->psem_gid,
    pinfo->psem_mode);

 pinfo->psem_flags |= PSEM_INDELETE;
 pinfo->psem_usecount--;

 if (!pinfo->psem_usecount) {
  psem_delete(pinfo);
  FREE(pinfo,M_SHM);
 } else {
  pinfo->psem_flags |= PSEM_REMOVED;
 }

 psem_cache_delete(pcache);
 FREE(pcache, M_SHM);
 return 0;
}
