
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt_lflag; } ;
typedef struct mount* mount_t ;
typedef int fsid_t ;


 int MNT_LDEAD ;
 int MNT_LUNMOUNT ;


 int VFS_ITERATE_CB_DROPREF ;
 int VFS_ITERATE_TAIL_FIRST ;


 scalar_t__ kalloc (int) ;
 int kfree (void*,int) ;
 int mount_fillfsids (int *,int) ;
 int mount_getvfscnt () ;
 int mount_iterdrop (struct mount*) ;
 struct mount* mount_list_lookupby_fsid (int *,int ,int) ;
 int mount_lock (struct mount*) ;
 int mount_unlock (struct mount*) ;

int
vfs_iterate(int flags, int (*callout)(mount_t, void *), void *arg)
{
 mount_t mp;
 int ret = 0;
 fsid_t * fsid_list;
 int count, actualcount, i;
 void * allocmem;
 int indx_start, indx_stop, indx_incr;
 int cb_dropref = (flags & VFS_ITERATE_CB_DROPREF);

 count = mount_getvfscnt();
 count += 10;

 fsid_list = (fsid_t *)kalloc(count * sizeof(fsid_t));
 allocmem = (void *)fsid_list;

 actualcount = mount_fillfsids(fsid_list, count);





 if (flags & VFS_ITERATE_TAIL_FIRST) {
  indx_start = actualcount - 1;
  indx_stop = -1;
  indx_incr = -1;
 } else {
  indx_start = 0;
  indx_stop = actualcount;
  indx_incr = 1;
 }

 for (i=indx_start; i != indx_stop; i += indx_incr) {


  mp = mount_list_lookupby_fsid(&fsid_list[i], 0, 1);

  if(mp == (struct mount *)0)
   continue;
  mount_lock(mp);
  if (mp->mnt_lflag & (MNT_LDEAD | MNT_LUNMOUNT)) {
   mount_unlock(mp);
   mount_iterdrop(mp);
   continue;

  }
  mount_unlock(mp);


  ret = callout(mp, arg);





  if (!cb_dropref)
   mount_iterdrop(mp);

  switch (ret) {
  case 129:
  case 128:
   if (ret == 128) {
    ret = 0;
    goto out;
   }
   break;

  case 130:
   ret = 0;
   goto out;
  case 131:
  default:
   break;
  }
  ret = 0;
 }

out:
 kfree(allocmem, (count * sizeof(fsid_t)));
 return (ret);
}
