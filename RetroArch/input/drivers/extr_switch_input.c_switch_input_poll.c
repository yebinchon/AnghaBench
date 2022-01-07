
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
typedef unsigned int uint32_t ;
typedef int uint16_t ;
struct TYPE_10__ {int py; int px; } ;
typedef TYPE_2__ touchPosition ;
struct TYPE_11__ {int* previous_touch_state; int* touch_state; int* keyboard_state; int mouse_previous_report; int mouse_button_left; int mouse_button_right; int mouse_button_middle; scalar_t__ mouse_x_delta; scalar_t__ mouse_y_delta; scalar_t__ mouse_x; scalar_t__ mouse_y; int mouse_wheel; int * touch_y_screen; int * touch_x_screen; int * touch_y_viewport; int * touch_x_viewport; int * touch_y; int * touch_x; int * touch_previous_y; int * touch_previous_x; TYPE_1__* joypad; } ;
typedef TYPE_3__ switch_input_t ;
struct video_viewport {scalar_t__ full_height; scalar_t__ full_width; scalar_t__ height; scalar_t__ width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_13__ {int sym; } ;
struct TYPE_12__ {scalar_t__ velocityX; scalar_t__ velocityY; int scrollVelocityY; } ;
struct TYPE_9__ {int (* poll ) () ;} ;
typedef TYPE_4__ MousePosition ;


 int KBD_LEFTALT ;
 int KBD_LEFTCTRL ;
 int KBD_LEFTSHIFT ;
 int KBD_RIGHTALT ;
 int KBD_RIGHTCTRL ;
 int KBD_RIGHTSHIFT ;
 int MOUSE_LEFT ;
 scalar_t__ MOUSE_MAX_X ;
 scalar_t__ MOUSE_MAX_Y ;
 int MOUSE_MIDDLE ;
 int MOUSE_RIGHT ;
 unsigned int MULTITOUCH_LIMIT ;
 int RETROKMOD_ALT ;
 int RETROKMOD_CTRL ;
 int RETROKMOD_SHIFT ;
 int RETRO_DEVICE_KEYBOARD ;
 unsigned int SWITCH_NUM_SCANCODES ;
 int handle_touch_mouse (TYPE_3__*) ;
 scalar_t__ hidKeyboardHeld (int) ;
 int hidMouseButtonsHeld () ;
 int hidMouseRead (TYPE_4__*) ;
 unsigned int hidTouchCount () ;
 int hidTouchRead (TYPE_2__*,unsigned int) ;
 int input_keyboard_event (int,unsigned int,int ,int ,int ) ;
 unsigned int input_keymaps_translate_keysym_to_rk (int) ;
 TYPE_5__* rarch_key_map_switch ;
 int stub1 () ;
 int video_driver_translate_coord_viewport_wrap (struct video_viewport*,int ,int ,int *,int *,int *,int *) ;

__attribute__((used)) static void switch_input_poll(void *data)
{
   switch_input_t *sw = (switch_input_t*) data;
   if (sw->joypad)
      sw->joypad->poll();
}
