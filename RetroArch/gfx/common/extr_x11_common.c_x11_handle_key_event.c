
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char uint32_t ;
typedef int uint16_t ;
typedef int keybuf ;
typedef int XIC ;
struct TYPE_7__ {unsigned int state; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_3__ xkey; } ;
typedef TYPE_1__ XEvent ;
typedef int Status ;
typedef scalar_t__ KeySym ;


 int ARRAY_SIZE (char*) ;
 unsigned int ControlMask ;
 scalar_t__ KeyPress ;
 unsigned int LockMask ;
 unsigned int Mod1Mask ;
 unsigned int Mod2Mask ;
 unsigned int Mod4Mask ;
 int RETROKMOD_ALT ;
 int RETROKMOD_CAPSLOCK ;
 int RETROKMOD_CTRL ;
 int RETROKMOD_META ;
 int RETROKMOD_NUMLOCK ;
 int RETROKMOD_SHIFT ;
 unsigned int RETROK_UNKNOWN ;
 int RETRO_DEVICE_KEYBOARD ;
 unsigned int ShiftMask ;
 scalar_t__ XK_A ;
 scalar_t__ XK_Z ;
 scalar_t__ XK_z ;
 scalar_t__ XLookupKeysym (TYPE_3__*,int) ;
 int XLookupString (TYPE_3__*,char*,int,scalar_t__*,int *) ;
 int Xutf8LookupString (int ,TYPE_3__*,char*,int ,scalar_t__*,int *) ;
 int input_keyboard_event (int,unsigned int,char,int ,int ) ;
 unsigned int input_keymaps_translate_keysym_to_rk (unsigned int) ;
 int utf8_conv_utf32 (char*,int ,char*,int) ;

__attribute__((used)) static void x11_handle_key_event(unsigned keycode, XEvent *event, XIC ic, bool filter)
{
   int i;
   Status status;
   uint32_t chars[32];
   unsigned key = 0;
   uint16_t mod = 0;
   unsigned state = event->xkey.state;
   bool down = event->type == KeyPress;
   int num = 0;
   KeySym keysym = 0;

   chars[0] = '\0';


   if (!filter)
   {
      if (down)
      {
         char keybuf[32];

         keybuf[0] = '\0';
         (void)ic;
         num = XLookupString(&event->xkey, keybuf,
               sizeof(keybuf), &keysym, ((void*)0));
         for (i = 0; i < num; i++)
            chars[i] = keybuf[i] & 0x7f;

      }
      else
         keysym = XLookupKeysym(&event->xkey, (state & ShiftMask) || (state & LockMask));
   }



   if (keysym >= XK_A && keysym <= XK_Z)
       keysym += XK_z - XK_Z;



   key = input_keymaps_translate_keysym_to_rk(keycode);

   if (state & ShiftMask)
      mod |= RETROKMOD_SHIFT;
   if (state & LockMask)
      mod |= RETROKMOD_CAPSLOCK;
   if (state & ControlMask)
      mod |= RETROKMOD_CTRL;
   if (state & Mod1Mask)
      mod |= RETROKMOD_ALT;
   if (state & Mod2Mask)
      mod |= RETROKMOD_NUMLOCK;
   if (state & Mod4Mask)
      mod |= RETROKMOD_META;

   input_keyboard_event(down, key, chars[0], mod, RETRO_DEVICE_KEYBOARD);

   for (i = 1; i < num; i++)
      input_keyboard_event(down, RETROK_UNKNOWN,
            chars[i], mod, RETRO_DEVICE_KEYBOARD);
}
