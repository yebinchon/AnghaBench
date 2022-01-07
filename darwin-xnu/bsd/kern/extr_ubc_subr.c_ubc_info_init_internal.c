
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct ubc_info {scalar_t__ ui_flags; scalar_t__ ui_size; void* ui_control; void* ui_pager; TYPE_1__* ui_vnode; int ui_ucred; } ;
typedef scalar_t__ off_t ;
typedef int memory_object_size_t ;
typedef void* memory_object_control_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_5__ {int v_lflag; struct ubc_info* v_ubcinfo; } ;


 scalar_t__ KERN_SUCCESS ;
 int NOCRED ;
 int SET (scalar_t__,int ) ;
 struct ubc_info* UBC_INFO_NULL ;
 int UI_HASOBJREF ;
 int UI_HASPAGER ;
 scalar_t__ UI_INITED ;
 scalar_t__ UI_NONE ;
 int VNAMED_UBC ;
 int assert (void*) ;
 int bzero (char*,int) ;
 scalar_t__ memory_object_create_named (void*,int ,void**) ;
 int panic (char*,scalar_t__) ;
 int ubc_info_zone ;
 int vfs_context_current () ;
 int vnode_pager_deallocate (void*) ;
 scalar_t__ vnode_pager_setup (TYPE_1__*,void*) ;
 int vnode_size (TYPE_1__*,scalar_t__*,int ) ;
 scalar_t__ zalloc (int ) ;

__attribute__((used)) static int
ubc_info_init_internal(vnode_t vp, int withfsize, off_t filesize)
{
 struct ubc_info *uip;
 void * pager;
 int error = 0;
 kern_return_t kret;
 memory_object_control_t control;

 uip = vp->v_ubcinfo;





 if (uip == UBC_INFO_NULL) {

  uip = (struct ubc_info *) zalloc(ubc_info_zone);
  bzero((char *)uip, sizeof(struct ubc_info));

  uip->ui_vnode = vp;
  uip->ui_flags = UI_INITED;
  uip->ui_ucred = NOCRED;
 }
 assert(uip->ui_flags != UI_NONE);
 assert(uip->ui_vnode == vp);


 vp->v_ubcinfo = uip;
 pager = (void *)vnode_pager_setup(vp, uip->ui_pager);
 assert(pager);





 SET(uip->ui_flags, UI_HASPAGER);
 uip->ui_pager = pager;
 kret = memory_object_create_named(pager,
  (memory_object_size_t)uip->ui_size, &control);
 vnode_pager_deallocate(pager);
 if (kret != KERN_SUCCESS)
  panic("ubc_info_init: memory_object_create_named returned %d", kret);

 assert(control);
 uip->ui_control = control;
 SET(uip->ui_flags, UI_HASOBJREF);

 if (withfsize == 0) {

  error = vnode_size(vp, &uip->ui_size, vfs_context_current());
  if (error)
   uip->ui_size = 0;
 } else {
  uip->ui_size = filesize;
 }
 vp->v_lflag |= VNAMED_UBC;

 return (error);
}
