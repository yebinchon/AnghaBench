
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pshmobj {int pshm_flags; struct pshmobj* pshmo_next; int pshmo_memobject; struct pshmobj* pshm_memobjects; int pshm_usecount; } ;
struct pshminfo {int pshm_flags; struct pshminfo* pshmo_next; int pshmo_memobject; struct pshminfo* pshm_memobjects; int pshm_usecount; } ;


 int EINVAL ;
 int FREE (struct pshmobj*,int ) ;
 int M_SHM ;
 int PSHM_ALLOCATED ;
 int PSHM_REMOVED ;
 int PSHM_SUBSYS_LOCK () ;
 int PSHM_SUBSYS_UNLOCK () ;
 int kprintf (char*) ;
 int mac_posixshm_label_destroy (struct pshmobj*) ;
 int mach_memory_entry_port_release (int ) ;

__attribute__((used)) static int
pshm_close(struct pshminfo *pinfo, int dropref)
{
 int error = 0;
 struct pshmobj *pshmobj, *pshmobj_next;





 if ( !dropref && ((pinfo->pshm_flags & PSHM_ALLOCATED) != PSHM_ALLOCATED)) {
  return(EINVAL);
 }





 pinfo->pshm_usecount--;

  if ((pinfo->pshm_flags & PSHM_REMOVED) && !pinfo->pshm_usecount) {



  PSHM_SUBSYS_UNLOCK();




  for (pshmobj = pinfo->pshm_memobjects;
       pshmobj != ((void*)0);
       pshmobj = pshmobj_next) {
   mach_memory_entry_port_release(pshmobj->pshmo_memobject);
   pshmobj_next = pshmobj->pshmo_next;
   FREE(pshmobj, M_SHM);
  }
  PSHM_SUBSYS_LOCK();
  FREE(pinfo,M_SHM);
 }
 return (error);
}
