
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_8__ {scalar_t__ keyboard_hid_handle; int* keyboard_state; int* prev_keys; scalar_t__ mouse_hid_handle; int mouse_button_left; int mouse_button_right; int mouse_button_middle; int mouse_x_delta; int mouse_y_delta; scalar_t__ mouse_x; scalar_t__ mouse_y; TYPE_1__* joypad; } ;
typedef TYPE_2__ psp_input_t ;
struct TYPE_10__ {int* modifiers; int* keycodes; } ;
struct TYPE_9__ {int buttons; scalar_t__ rel_y; scalar_t__ rel_x; } ;
struct TYPE_7__ {int (* poll ) () ;} ;
typedef TYPE_3__ SceHidMouseReport ;
typedef TYPE_4__ SceHidKeyboardReport ;


 scalar_t__ MOUSE_MAX_X ;
 scalar_t__ MOUSE_MAX_Y ;
 int RETROKMOD_ALT ;
 int RETROKMOD_CAPSLOCK ;
 int RETROKMOD_CTRL ;
 int RETROKMOD_META ;
 int RETROKMOD_NUMLOCK ;
 int RETROKMOD_SCROLLOCK ;
 int RETROKMOD_SHIFT ;
 int RETRO_DEVICE_KEYBOARD ;
 int SCE_HID_MAX_REPORT ;
 unsigned int VITA_NUM_MODIFIERS ;
 int input_keyboard_event (int,unsigned int,int ,int ,int ) ;
 unsigned int input_keymaps_translate_keysym_to_rk (int) ;
 int** modifier_lut ;
 int sceHidKeyboardRead (scalar_t__,TYPE_4__**,int) ;
 int sceHidMouseRead (scalar_t__,TYPE_3__**,int) ;
 int stub1 () ;

__attribute__((used)) static void psp_input_poll(void *data)
{
   psp_input_t *psp = (psp_input_t*)data;

   if (psp && psp->joypad)
      psp->joypad->poll();
}
