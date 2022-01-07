
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int dn_change; int dn_access; int dn_update; } ;
typedef TYPE_1__ devnode_t ;


 int DEVFS_UPDATE_ACCESS ;
 int DEVFS_UPDATE_CHANGE ;
 int DEVFS_UPDATE_MOD ;

void
dn_mark_for_delayed_times_update(devnode_t *dnp, uint32_t just_changed_flags)
{
 if (just_changed_flags & DEVFS_UPDATE_CHANGE) {
  dnp->dn_change = 1;
 }
 if (just_changed_flags & DEVFS_UPDATE_ACCESS) {
  dnp->dn_access = 1;
 }
 if (just_changed_flags & DEVFS_UPDATE_MOD) {
  dnp->dn_update = 1;
 }
}
