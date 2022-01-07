
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int dn_type; int dn_dvm; struct TYPE_9__* dn_nextsibling; } ;
typedef TYPE_1__ devnode_t ;
typedef int * devfs_event_log_t ;
struct TYPE_10__ {char* de_name; TYPE_1__* de_dnp; } ;
typedef TYPE_2__ devdirent_t ;


 scalar_t__ DEV_DIR ;
 int VNODE_EVENT_DIR_CREATED ;
 int VNODE_EVENT_FILE_CREATED ;
 int VNODE_EVENT_LINK ;
 int dev_add_entry (char*,TYPE_1__*,int,int *,TYPE_1__*,int ,TYPE_2__**) ;
 int devfs_record_event (int *,TYPE_1__*,int ) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
devfs_propogate(devdirent_t * parent,devdirent_t * child, devfs_event_log_t delp)
{
 int error;
 devdirent_t * newnmp;
 devnode_t * dnp = child->de_dnp;
 devnode_t * pdnp = parent->de_dnp;
 devnode_t * adnp = parent->de_dnp;
 int type = child->de_dnp->dn_type;
 uint32_t events;

 events = (dnp->dn_type == DEV_DIR ? VNODE_EVENT_DIR_CREATED : VNODE_EVENT_FILE_CREATED);
 if (delp != ((void*)0)) {
  devfs_record_event(delp, pdnp, events);
 }




 for (adnp = pdnp->dn_nextsibling;
  adnp != pdnp;
  adnp = adnp->dn_nextsibling)
 {





  if ((error = dev_add_entry(child->de_name, adnp, type,
        ((void*)0), dnp, adnp->dn_dvm,
        &newnmp)) != 0) {
   printf("duplicating %s failed\n",child->de_name);
  } else {
   if (delp != ((void*)0)) {
    devfs_record_event(delp, adnp, events);
    devfs_record_event(delp, newnmp->de_dnp, VNODE_EVENT_LINK);
   }
  }
 }
 return 0;
}
