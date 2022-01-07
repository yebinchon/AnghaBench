
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct dinput_input {TYPE_1__* joypad; scalar_t__ mouse_y; scalar_t__ mouse_x; scalar_t__ mouse_b5; scalar_t__ mouse_b4; scalar_t__ mouse_m; scalar_t__ mouse_r; scalar_t__ mouse_l; int mouse_rel_y; int mouse_rel_x; scalar_t__ mouse; TYPE_3__* state; scalar_t__ keyboard; } ;
typedef int mouse_state ;
struct TYPE_10__ {scalar_t__* rgbButtons; int lY; int lX; } ;
struct TYPE_9__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_8__ {int (* poll ) () ;} ;
typedef TYPE_2__ POINT ;
typedef int HWND ;
typedef TYPE_3__ DIMOUSESTATE2 ;


 scalar_t__ FAILED (int ) ;
 int GetCursorPos (TYPE_2__*) ;
 int IDirectInputDevice8_Acquire (scalar_t__) ;
 int IDirectInputDevice8_GetDeviceState (scalar_t__,int,TYPE_3__*) ;
 int ScreenToClient (int ,TYPE_2__*) ;
 scalar_t__ doubleclick_on_titlebar_pressed () ;
 int memset (TYPE_3__*,int ,int) ;
 int stub1 () ;
 int unset_doubleclick_on_titlebar () ;
 scalar_t__ video_driver_window_get () ;

__attribute__((used)) static void dinput_poll(void *data)
{
   struct dinput_input *di = (struct dinput_input*)data;

   if (!di)
      return;

   memset(di->state, 0, sizeof(di->state));
   if (di->keyboard)
   {
      if (FAILED(IDirectInputDevice8_GetDeviceState(
                  di->keyboard, sizeof(di->state), di->state)))
      {
         IDirectInputDevice8_Acquire(di->keyboard);
         if (FAILED(IDirectInputDevice8_GetDeviceState(
                     di->keyboard, sizeof(di->state), di->state)))
            memset(di->state, 0, sizeof(di->state));
      }
   }

   if (di->mouse)
   {
      POINT point;
      DIMOUSESTATE2 mouse_state;

      point.x = 0;
      point.y = 0;

      memset(&mouse_state, 0, sizeof(mouse_state));

      if (FAILED(IDirectInputDevice8_GetDeviceState(
                  di->mouse, sizeof(mouse_state), &mouse_state)))
      {
         IDirectInputDevice8_Acquire(di->mouse);
         if (FAILED(IDirectInputDevice8_GetDeviceState(
                     di->mouse, sizeof(mouse_state), &mouse_state)))
            memset(&mouse_state, 0, sizeof(mouse_state));
      }

      di->mouse_rel_x = mouse_state.lX;
      di->mouse_rel_y = mouse_state.lY;

      if (!mouse_state.rgbButtons[0])
         unset_doubleclick_on_titlebar();
      if (doubleclick_on_titlebar_pressed())
         di->mouse_l = 0;
      else
         di->mouse_l = mouse_state.rgbButtons[0];
      di->mouse_r = mouse_state.rgbButtons[1];
      di->mouse_m = mouse_state.rgbButtons[2];
      di->mouse_b4 = mouse_state.rgbButtons[3];
      di->mouse_b5 = mouse_state.rgbButtons[4];



      GetCursorPos(&point);
      ScreenToClient((HWND)video_driver_window_get(), &point);
      di->mouse_x = point.x;
      di->mouse_y = point.y;
   }

   if (di->joypad)
      di->joypad->poll();
}
