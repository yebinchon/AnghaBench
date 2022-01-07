
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ dn_vn; } ;
typedef TYPE_1__ devnode_t ;
typedef TYPE_2__* devfs_vnode_event_t ;
typedef TYPE_3__* devfs_event_log_t ;
struct TYPE_8__ {size_t del_used; size_t del_max; TYPE_2__* del_entries; } ;
struct TYPE_7__ {scalar_t__ dve_vp; int dve_events; int dve_vid; } ;


 scalar_t__ NULLVP ;
 int panic (char*) ;
 scalar_t__ vnode_ismonitored (scalar_t__) ;
 int vnode_vid (scalar_t__) ;

__attribute__((used)) static void
devfs_record_event(devfs_event_log_t delp, devnode_t *dnp, uint32_t events)
{
 if (delp->del_used >= delp->del_max) {
  panic("devfs event log overflowed.\n");
 }


 if (dnp->dn_vn != NULLVP && vnode_ismonitored(dnp->dn_vn)) {
  devfs_vnode_event_t dvep = &delp->del_entries[delp->del_used];
  dvep->dve_vp = dnp->dn_vn;
  dvep->dve_vid = vnode_vid(dnp->dn_vn);
  dvep->dve_events = events;
  delp->del_used++;
 }
}
