
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Window ;
typedef int Display ;


 int ButtonPressMask ;
 int ButtonReleaseMask ;
 int CurrentTime ;
 int False ;
 int GrabModeAsync ;
 int None ;
 int PointerMotionMask ;
 scalar_t__ RARCH_DISPLAY_X11 ;
 int RARCH_WARN (char*) ;
 int XGrabPointer (int *,scalar_t__,int ,int,int ,int ,scalar_t__,int ,int ) ;
 int XUngrabPointer (int *,int ) ;
 scalar_t__ video_driver_display_get () ;
 scalar_t__ video_driver_display_type_get () ;
 scalar_t__ video_driver_window_get () ;

__attribute__((used)) static void udev_input_grab_mouse(void *data, bool state)
{
   RARCH_WARN("[udev]: Mouse grab/ungrab feature unavailable.\n");

}
