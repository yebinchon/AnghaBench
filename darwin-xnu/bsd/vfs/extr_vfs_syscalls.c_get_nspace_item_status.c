
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
typedef int int32_t ;
struct TYPE_2__ {int flags; struct vnode* vp; } ;


 int ENOENT ;
 int MAX_NSPACE_ITEMS ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nspace_handler_lock ;
 TYPE_1__* nspace_items ;

int
get_nspace_item_status(struct vnode *vp, int32_t *status)
{
 int i;

 lck_mtx_lock(&nspace_handler_lock);
 for(i=0; i < MAX_NSPACE_ITEMS; i++) {
  if (nspace_items[i].vp == vp) {
   break;
  }
 }

 if (i >= MAX_NSPACE_ITEMS) {
  lck_mtx_unlock(&nspace_handler_lock);
  return ENOENT;
 }

 *status = nspace_items[i].flags;
 lck_mtx_unlock(&nspace_handler_lock);
 return 0;
}
