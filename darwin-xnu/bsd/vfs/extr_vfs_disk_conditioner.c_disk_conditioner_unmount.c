
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ enabled; } ;
struct _disk_conditioner_info_t {int mnt_fields; TYPE_1__ dcinfo; } ;
typedef TYPE_2__* mount_t ;
struct TYPE_6__ {struct _disk_conditioner_info_t* mnt_disk_conditioner_info; } ;


 int disk_conditioner_restore_mount_fields (TYPE_2__*,int *) ;
 int kfree (struct _disk_conditioner_info_t*,int) ;

void
disk_conditioner_unmount(mount_t mp)
{
 struct _disk_conditioner_info_t *internal_info = mp->mnt_disk_conditioner_info;

 if (!internal_info) {
  return;
 }

 if (internal_info->dcinfo.enabled) {
  disk_conditioner_restore_mount_fields(mp, &(internal_info->mnt_fields));
 }
 mp->mnt_disk_conditioner_info = ((void*)0);
 kfree(internal_info, sizeof(struct _disk_conditioner_info_t));
}
