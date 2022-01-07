
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfstable {struct vfstable* vfc_next; struct vfstable* vfc_sysctl; int * oid_name; } ;


 int ESRCH ;
 int FREE (struct vfstable*,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int M_TEMP ;
 int bzero (struct vfstable*,int) ;
 int lck_mtx_assert (int ,int ) ;
 int maxvfsslots ;
 int mnt_list_mtx_lock ;
 int mount_list_lock () ;
 int mount_list_unlock () ;
 int numregistered_fses ;
 int numused_vfsslots ;
 int sysctl_unregister_oid (struct vfstable*) ;
 struct vfstable* vfsconf ;

int
vfstable_del(struct vfstable * vtbl)
{
 struct vfstable **vcpp;
 struct vfstable *vcdelp;
 for( vcpp = &vfsconf; *vcpp; vcpp = &(*vcpp)->vfc_next) {
  if (*vcpp == vtbl)
   break;
 }

 if (*vcpp == ((void*)0))
    return(ESRCH);

 if ((*vcpp)->vfc_sysctl) {
  sysctl_unregister_oid((*vcpp)->vfc_sysctl);
  (*vcpp)->vfc_sysctl->oid_name = ((void*)0);
  FREE((*vcpp)->vfc_sysctl, M_TEMP);
  (*vcpp)->vfc_sysctl = ((void*)0);
 }


 vcdelp = *vcpp;
 *vcpp = (*vcpp)->vfc_next;






 if (vcdelp >= vfsconf && vcdelp < (vfsconf + maxvfsslots)) {

  bzero(vcdelp, sizeof(struct vfstable));
  numregistered_fses--;
  numused_vfsslots--;
 } else {






  numregistered_fses--;
  mount_list_unlock();
  FREE(vcdelp, M_TEMP);
  mount_list_lock();
 }





 return(0);
}
