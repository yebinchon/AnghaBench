
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct devfs_vnode_event {int dummy; } ;
struct devfs_event_log {int dummy; } ;
struct TYPE_6__ {int dn_links; TYPE_5__* dn_linklist; struct TYPE_6__* dn_nextsibling; struct TYPE_6__** dn_prevsiblingp; } ;
typedef TYPE_1__ devnode_t ;
struct TYPE_7__ {TYPE_1__* de_dnp; } ;
typedef TYPE_2__ devdirent_t ;
typedef int boolean_t ;
struct TYPE_8__ {TYPE_1__* de_parent; } ;


 int DEVFS_LOCK () ;
 int DEVFS_UNLOCK () ;
 int NUM_STACK_ENTRIES ;
 int VNODE_EVENT_DELETE ;
 int VNODE_EVENT_FILE_REMOVED ;
 int dev_free_name (TYPE_5__*) ;
 int devfs_bulk_notify (struct devfs_event_log*) ;
 scalar_t__ devfs_init_event_log (struct devfs_event_log*,int,struct devfs_vnode_event*) ;
 int devfs_ready ;
 int devfs_record_event (struct devfs_event_log*,TYPE_1__*,int ) ;
 int devfs_release_event_log (struct devfs_event_log*,int) ;
 int printf (char*) ;
 int remove_notify_count (TYPE_1__*) ;

void
devfs_remove(void *dirent_p)
{
 devnode_t * dnp = ((devdirent_t *)dirent_p)->de_dnp;
 devnode_t * dnp2;
 boolean_t lastlink;
 struct devfs_event_log event_log;
 uint32_t log_count = 0;
 int do_notify = 0;
 int need_free = 0;
 struct devfs_vnode_event stackbuf[NUM_STACK_ENTRIES];

 DEVFS_LOCK();

 if (!devfs_ready) {
  printf("devfs_remove: not ready for devices!\n");
  goto out;
 }

 log_count = remove_notify_count(dnp);

 if (log_count > NUM_STACK_ENTRIES) {
  uint32_t new_count;
wrongsize:
  DEVFS_UNLOCK();
  if (devfs_init_event_log(&event_log, log_count, ((void*)0)) == 0) {
   do_notify = 1;
   need_free = 1;
  }
  DEVFS_LOCK();

  new_count = remove_notify_count(dnp);
  if (need_free && (new_count > log_count)) {
   devfs_release_event_log(&event_log, 1);
   need_free = 0;
   do_notify = 0;
   log_count = log_count * 2;
   goto wrongsize;
  }
 } else {
  if (devfs_init_event_log(&event_log, NUM_STACK_ENTRIES, &stackbuf[0]) == 0) {
   do_notify = 1;
  }
 }


 if (do_notify != 0) {
  devfs_record_event(&event_log, dnp, VNODE_EVENT_DELETE);
 }


 while ((dnp2 = dnp->dn_nextsibling) != dnp) {




  dnp->dn_nextsibling = dnp2->dn_nextsibling;
  dnp->dn_nextsibling->dn_prevsiblingp = &(dnp->dn_nextsibling);
  dnp2->dn_nextsibling = dnp2;
  dnp2->dn_prevsiblingp = &(dnp2->dn_nextsibling);


  if (do_notify != 0) {
   devfs_record_event(&event_log, dnp2, VNODE_EVENT_DELETE);
  }

  if (dnp2->dn_linklist) {
   do {
    lastlink = (1 == dnp2->dn_links);

    if (do_notify != 0) {
     devfs_record_event(&event_log, dnp2->dn_linklist->de_parent, VNODE_EVENT_FILE_REMOVED);
    }
    dev_free_name(dnp2->dn_linklist);
   } while (!lastlink);
  }
 }






 if (dnp->dn_linklist) {
  do {
   lastlink = (1 == dnp->dn_links);

   if (do_notify != 0) {
    devfs_record_event(&event_log, dnp->dn_linklist->de_parent, VNODE_EVENT_FILE_REMOVED);
   }
   dev_free_name(dnp->dn_linklist);
  } while (!lastlink);
 }
out:
 DEVFS_UNLOCK();
 if (do_notify != 0) {
  devfs_bulk_notify(&event_log);
  devfs_release_event_log(&event_log, need_free);
 }

 return ;
}
