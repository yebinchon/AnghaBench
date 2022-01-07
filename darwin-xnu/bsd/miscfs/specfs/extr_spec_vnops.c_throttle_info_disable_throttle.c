
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _throttle_io_info_t {int throttle_disabled; scalar_t__ throttle_is_fusion_with_priority; } ;
typedef scalar_t__ boolean_t ;


 int FALSE ;
 int LOWPRI_MAX_NUM_DEV ;
 struct _throttle_io_info_t* _throttle_io_info ;
 int panic (char*,int) ;
 int throttle_init_throttle_period (struct _throttle_io_info_t*,int ) ;

void throttle_info_disable_throttle(int devno, boolean_t isfusion)
{
 struct _throttle_io_info_t *info;

 if (devno < 0 || devno >= LOWPRI_MAX_NUM_DEV)
  panic("Illegal devno (%d) passed into throttle_info_disable_throttle()", devno);

 info = &_throttle_io_info[devno];


 if (isfusion) {
  info->throttle_is_fusion_with_priority = isfusion;
  throttle_init_throttle_period(info, FALSE);
 }
 info->throttle_disabled = !info->throttle_is_fusion_with_priority;
 return;
}
