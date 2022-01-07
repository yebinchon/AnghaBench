
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_t {int orient; int accel_calib; } ;


 int SMOOTH_PITCH ;
 int SMOOTH_ROLL ;
 scalar_t__ WIIMOTE_IS_FLAG_SET (struct wiimote_t*,int ) ;
 int WIIUSE_SMOOTHING ;
 scalar_t__ WIIUSE_USING_ACC (struct wiimote_t*) ;
 int apply_smoothing (int *,int *,int ) ;

void idle_cycle(struct wiimote_t* wm)
{
 if (WIIUSE_USING_ACC(wm) && WIIMOTE_IS_FLAG_SET(wm, WIIUSE_SMOOTHING)) {
  apply_smoothing(&wm->accel_calib, &wm->orient, SMOOTH_ROLL);
  apply_smoothing(&wm->accel_calib, &wm->orient, SMOOTH_PITCH);
 }
}
