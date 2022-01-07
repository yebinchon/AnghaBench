
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int va_list ;
typedef int uint32_t ;
typedef int uid_t ;
struct devfs_vnode_event {int dummy; } ;
struct devfs_event_log {int dummy; } ;
typedef int gid_t ;
struct TYPE_15__ {int dev; } ;
typedef TYPE_3__ devnode_type_t ;
struct TYPE_13__ {int myname; } ;
struct TYPE_14__ {TYPE_1__ Dir; } ;
struct TYPE_16__ {TYPE_2__ dn_typeinfo; } ;
typedef TYPE_4__ devnode_t ;
typedef int devfstype_t ;
struct TYPE_17__ {TYPE_6__* de_dnp; } ;
typedef TYPE_5__ devdirent_t ;
typedef int dev_t ;
typedef int buff ;
typedef int buf ;
struct TYPE_18__ {int dn_mode; int (* dn_clone ) (int ,int) ;int dn_uid; int dn_gid; } ;


 int DEVFS_CREATE ;
 int DEVFS_LOCK () ;
 int DEVFS_UNLOCK () ;
 int NUM_STACK_ENTRIES ;
 int bcopy (char*,char*,int) ;
 scalar_t__ dev_add_entry (char*,TYPE_4__*,int ,TYPE_3__*,int *,int *,TYPE_5__**) ;
 scalar_t__ dev_finddir (char const*,int *,int ,TYPE_4__**,struct devfs_event_log*) ;
 int devfs_bulk_notify (struct devfs_event_log*) ;
 scalar_t__ devfs_init_event_log (struct devfs_event_log*,int,struct devfs_vnode_event*) ;
 int devfs_nmountplanes ;
 int devfs_propogate (int ,TYPE_5__*,struct devfs_event_log*) ;
 int devfs_ready ;
 int devfs_release_event_log (struct devfs_event_log*,int) ;
 int mac_devfs_label_associate_device (int ,TYPE_6__*,char*) ;
 int printf (char*) ;
 int strlen (char*) ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static devdirent_t *
devfs_make_node_internal(dev_t dev, devfstype_t type, uid_t uid,
  gid_t gid, int perms, int (*clone)(dev_t dev, int action), const char *fmt, va_list ap)
{
 devdirent_t * new_dev = ((void*)0);
 devnode_t * dnp;
 devnode_type_t typeinfo;

 char *name, buf[256];
 const char *path;



 int i;
 uint32_t log_count;
 struct devfs_event_log event_log;
 struct devfs_vnode_event stackbuf[NUM_STACK_ENTRIES];
 int need_free = 0;

 vsnprintf(buf, sizeof(buf), fmt, ap);





 name = ((void*)0);

 for(i=strlen(buf); i>0; i--)
  if(buf[i] == '/') {
   name=&buf[i];
   buf[i]=0;
   break;
  }

 if (name) {
  *name++ = '\0';
  path = buf;
 } else {
  name = buf;
  path = "/";
 }

 log_count = devfs_nmountplanes;
 if (log_count > NUM_STACK_ENTRIES) {
wrongsize:
  need_free = 1;
  if (devfs_init_event_log(&event_log, log_count, ((void*)0)) != 0) {
   return ((void*)0);
  }
 } else {
  need_free = 0;
  log_count = NUM_STACK_ENTRIES;
  if (devfs_init_event_log(&event_log, log_count, &stackbuf[0]) != 0) {
   return ((void*)0);
  }
 }

 DEVFS_LOCK();
 if (log_count < devfs_nmountplanes) {
  DEVFS_UNLOCK();
  devfs_release_event_log(&event_log, need_free);
  log_count = log_count * 2;
  goto wrongsize;
 }

 if (!devfs_ready) {
  printf("devfs_make_node: not ready for devices!\n");
  goto out;
 }


 if (dev_finddir(path, ((void*)0), DEVFS_CREATE, &dnp, &event_log) == 0) {
     typeinfo.dev = dev;
     if (dev_add_entry(name, dnp, type, &typeinfo, ((void*)0), ((void*)0), &new_dev) == 0) {
  new_dev->de_dnp->dn_gid = gid;
  new_dev->de_dnp->dn_uid = uid;
  new_dev->de_dnp->dn_mode |= perms;
  new_dev->de_dnp->dn_clone = clone;



  devfs_propogate(dnp->dn_typeinfo.Dir.myname, new_dev, &event_log);
     }
 }

out:
 DEVFS_UNLOCK();

 devfs_bulk_notify(&event_log);
 devfs_release_event_log(&event_log, need_free);
 return new_dev;
}
