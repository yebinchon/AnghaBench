
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef void _throttle_io_info_t ;
typedef TYPE_2__* mount_t ;
typedef int boolean_t ;
struct TYPE_8__ {size_t mnt_devbsdunit; } ;
struct TYPE_7__ {int uu_lowpri_window; } ;


 int FALSE ;
 int LOWPRI_MAX_NUM_DEV ;
 int TRUE ;
 int * _throttle_io_info ;
 int current_thread () ;
 scalar_t__ disk_conditioner_mount_is_ssd (TYPE_2__*) ;
 TYPE_1__* get_bsdthread_info (int ) ;
 int throttle_info_set_initial_window (TYPE_1__*,void*,int ,int ) ;

void *throttle_info_update_by_mount(mount_t mp)
{
 struct _throttle_io_info_t *info;
 uthread_t ut;
 boolean_t isssd = FALSE;

 ut = get_bsdthread_info(current_thread());

 if (mp != ((void*)0)) {
  if (disk_conditioner_mount_is_ssd(mp))
   isssd = TRUE;
  info = &_throttle_io_info[mp->mnt_devbsdunit];
 } else
  info = &_throttle_io_info[LOWPRI_MAX_NUM_DEV - 1];

 if (!ut->uu_lowpri_window)
  throttle_info_set_initial_window(ut, info, FALSE, isssd);

 return info;
}
