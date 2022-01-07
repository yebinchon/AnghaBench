
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pshmobj {int pshm_flags; struct pshmobj* pshmo_next; int pshmo_memobject; struct pshmobj* pshm_memobjects; int pshm_usecount; } ;
struct pshminfo {int pshm_flags; struct pshminfo* pshmo_next; int pshmo_memobject; struct pshminfo* pshm_memobjects; int pshm_usecount; } ;
struct pshmcache {int pshm_flags; struct pshmcache* pshmo_next; int pshmo_memobject; struct pshmcache* pshm_memobjects; int pshm_usecount; } ;


 int EINVAL ;
 int FREE (struct pshmobj*,int ) ;
 int M_SHM ;
 int PSHM_ALLOCATED ;
 int PSHM_DEFINED ;
 int PSHM_INDELETE ;
 int PSHM_REMOVED ;
 int PSHM_SUBSYS_ASSERT_HELD () ;
 int mac_posixshm_label_destroy (struct pshmobj*) ;
 int mach_memory_entry_port_release (int ) ;
 int pshm_cache_delete (struct pshmobj*) ;

__attribute__((used)) static int
pshm_unlink_internal(struct pshminfo *pinfo, struct pshmcache *pcache)
{
 struct pshmobj *pshmobj, *pshmobj_next;

 PSHM_SUBSYS_ASSERT_HELD();

 if (!pinfo || !pcache)
  return EINVAL;

 if ((pinfo->pshm_flags & (PSHM_DEFINED | PSHM_ALLOCATED)) == 0)
  return EINVAL;

 if (pinfo->pshm_flags & PSHM_INDELETE)
  return 0;

 pinfo->pshm_flags |= PSHM_INDELETE;
 pinfo->pshm_usecount--;

 pshm_cache_delete(pcache);
 pinfo->pshm_flags |= PSHM_REMOVED;


 if (!pinfo->pshm_usecount) {
  for (pshmobj = pinfo->pshm_memobjects;
       pshmobj != ((void*)0);
       pshmobj = pshmobj_next) {
   mach_memory_entry_port_release(pshmobj->pshmo_memobject);
   pshmobj_next = pshmobj->pshmo_next;
   FREE(pshmobj, M_SHM);
  }
  FREE(pinfo,M_SHM);
 }

 FREE(pcache, M_SHM);

 return 0;
}
