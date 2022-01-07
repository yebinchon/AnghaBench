
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vfstable_t ;
struct vfstable {scalar_t__ vfc_refcount; void* vfc_descptr; scalar_t__ vfc_descsize; } ;
typedef scalar_t__ errno_t ;


 scalar_t__ EBUSY ;
 int FREE (void*,int ) ;
 int M_TEMP ;
 int mount_list_lock () ;
 int mount_list_unlock () ;
 scalar_t__ vfstable_del (struct vfstable*) ;

errno_t
vfs_fsremove(vfstable_t handle)
{
 struct vfstable * vfstbl = (struct vfstable *)handle;
 void *old_desc = ((void*)0);
 errno_t err;


 mount_list_lock();
 if ( vfstbl->vfc_refcount != 0 ) {
  mount_list_unlock();
  return EBUSY;
 }





 if (vfstbl->vfc_descptr && vfstbl->vfc_descsize) {
  old_desc = vfstbl->vfc_descptr;
 }
 err = vfstable_del(vfstbl);

 mount_list_unlock();


 if (err == 0 && old_desc) {
  FREE(old_desc, M_TEMP);
 }

 return(err);
}
