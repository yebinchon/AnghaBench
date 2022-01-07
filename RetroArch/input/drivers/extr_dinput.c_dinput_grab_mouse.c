
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dinput_input {int mouse; } ;
typedef int HWND ;


 int DISCL_EXCLUSIVE ;
 int DISCL_FOREGROUND ;
 int DISCL_NONEXCLUSIVE ;
 int IDirectInputDevice8_Acquire (int ) ;
 int IDirectInputDevice8_SetCooperativeLevel (int ,int ,int) ;
 int IDirectInputDevice8_Unacquire (int ) ;
 scalar_t__ video_driver_window_get () ;

__attribute__((used)) static void dinput_grab_mouse(void *data, bool state)
{
   struct dinput_input *di = (struct dinput_input*)data;

   IDirectInputDevice8_Unacquire(di->mouse);
   IDirectInputDevice8_SetCooperativeLevel(di->mouse,
      (HWND)video_driver_window_get(),
      state ?
      (DISCL_EXCLUSIVE | DISCL_FOREGROUND) :
      (DISCL_NONEXCLUSIVE | DISCL_FOREGROUND));
   IDirectInputDevice8_Acquire(di->mouse);
}
