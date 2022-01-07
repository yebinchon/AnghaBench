
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _disk_conditioner_info_t {int dcinfo; } ;
typedef TYPE_1__* mount_t ;
typedef int disk_conditioner_info ;
struct TYPE_3__ {struct _disk_conditioner_info_t* mnt_disk_conditioner_info; } ;


 int EINVAL ;
 int memcpy (int *,int *,int) ;

int
disk_conditioner_get_info(mount_t mp, disk_conditioner_info *uinfo)
{
 struct _disk_conditioner_info_t *info;

 if (!mp) {
  return EINVAL;
 }

 info = mp->mnt_disk_conditioner_info;

 if (info) {
  memcpy(uinfo, &(info->dcinfo), sizeof(disk_conditioner_info));
 }

 return 0;
}
