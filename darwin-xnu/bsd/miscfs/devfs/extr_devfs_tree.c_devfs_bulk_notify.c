
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef TYPE_1__* devfs_vnode_event_t ;
typedef TYPE_2__* devfs_event_log_t ;
struct TYPE_5__ {size_t del_used; TYPE_1__* del_entries; } ;
struct TYPE_4__ {int dve_vp; int dve_events; int dve_vid; } ;


 scalar_t__ vnode_getwithvid (int ,int ) ;
 int vnode_notify (int ,int ,int *) ;
 int vnode_put (int ) ;

__attribute__((used)) static void
devfs_bulk_notify(devfs_event_log_t delp)
{
 uint32_t i;
 for (i = 0; i < delp->del_used; i++) {
  devfs_vnode_event_t dvep = &delp->del_entries[i];
  if (vnode_getwithvid(dvep->dve_vp, dvep->dve_vid) == 0) {
   vnode_notify(dvep->dve_vp, dvep->dve_events, ((void*)0));
   vnode_put(dvep->dve_vp);
  }
 }
}
