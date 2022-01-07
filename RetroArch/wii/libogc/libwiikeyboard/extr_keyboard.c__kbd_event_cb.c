
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wscons_keymap {int* group1; void** group2; } ;
typedef void* keysym_t ;
struct TYPE_6__ {scalar_t__ type; int modifiers; void* symbol; int keycode; } ;
typedef TYPE_1__ keyboard_event ;
struct TYPE_7__ {int type; int keyCode; } ;
typedef TYPE_2__ USBKeyboard_event ;
struct TYPE_8__ {void* symbol; int keycode; } ;


 scalar_t__ KEYBOARD_DISCONNECTED ;
 scalar_t__ KEYBOARD_PRESSED ;
 scalar_t__ KEYBOARD_RELEASED ;





 int KS_GROUP (void*) ;
 void* KS_Multi_key ;




 int MAXHELD ;
 int MOD_ANYCONTROL ;
 int MOD_ANYSHIFT ;
 int MOD_CAPSLOCK ;
 int MOD_COMPOSE ;
 int MOD_CONTROL_L ;
 int MOD_CONTROL_R ;
 int MOD_HOLDSCREEN ;
 int MOD_META_L ;
 int MOD_META_R ;
 int MOD_MODELOCK ;
 int MOD_MODESHIFT ;
 int MOD_NUMLOCK ;
 int MOD_ONESET (int,int) ;
 int MOD_SHIFTLOCK ;
 int MOD_SHIFT_L ;
 int MOD_SHIFT_R ;

 int USBKEYBOARD_LEDCAPS ;
 int USBKEYBOARD_LEDNUM ;
 int USBKEYBOARD_LEDSCROLL ;


 int USBKeyboard_SetLed (int ,int) ;
 void** _composebuf ;
 int _composelen ;
 TYPE_5__* _held ;
 int _kbd_addEvent (TYPE_1__*) ;
 int _modifiers ;
 int _ukbd_keymapdata ;
 void* ksym_upcase (void*) ;
 int update_modifier (scalar_t__,int,int) ;
 void* wskbd_compose_value (void**) ;
 int wskbd_get_mapentry (int *,int ,struct wscons_keymap*) ;

__attribute__((used)) static void _kbd_event_cb(USBKeyboard_event kevent)
{
 keyboard_event event;
 struct wscons_keymap kp;
 keysym_t *group;
 int gindex;
 keysym_t ksym;
 int i;

 switch (kevent.type) {
 case 130:
  event.type = KEYBOARD_DISCONNECTED;
  event.modifiers = 0;
  event.keycode = 0;
  event.symbol = 0;

  _kbd_addEvent(&event);

  return;

 case 129:
  event.type = KEYBOARD_PRESSED;
  break;

 case 128:
  event.type = KEYBOARD_RELEASED;
  break;

 default:
  return;
 }

 event.keycode = kevent.keyCode;

 wskbd_get_mapentry(&_ukbd_keymapdata, event.keycode, &kp);


 switch (kp.group1[0]) {
 case 133:
  update_modifier(event.type, 0, MOD_SHIFT_L);
  break;

 case 131:
  update_modifier(event.type, 0, MOD_SHIFT_R);
  break;

 case 132:
  update_modifier(event.type, 1, MOD_SHIFTLOCK);
  break;

 case 145:
  update_modifier(event.type, 1, MOD_CAPSLOCK);
  USBKeyboard_SetLed(USBKEYBOARD_LEDCAPS,
       MOD_ONESET(_modifiers, MOD_CAPSLOCK));
  break;

 case 144:
  update_modifier(event.type, 0, MOD_CONTROL_L);
  break;

 case 143:
  update_modifier(event.type, 0, MOD_CONTROL_R);
  break;

 case 147:
  update_modifier(event.type, 0, MOD_META_L);
  break;

 case 146:
  update_modifier(event.type, 0, MOD_META_R);
  break;

 case 135:
  update_modifier(event.type, 0, MOD_MODESHIFT);
  break;

 case 136:
  update_modifier(event.type, 1, MOD_MODELOCK);
  break;

 case 134:
  update_modifier(event.type, 1, MOD_NUMLOCK);
  USBKeyboard_SetLed(USBKEYBOARD_LEDNUM,
       MOD_ONESET(_modifiers, MOD_NUMLOCK));
  break;

 case 137:
  update_modifier(event.type, 1, MOD_HOLDSCREEN);
  USBKeyboard_SetLed(USBKEYBOARD_LEDSCROLL,
       MOD_ONESET(_modifiers, MOD_HOLDSCREEN));
  break;
 }


 if (_modifiers & (MOD_MODESHIFT|MOD_MODELOCK) &&
     !MOD_ONESET(_modifiers, MOD_ANYCONTROL))
  group = &kp.group2[0];
 else
  group = &kp.group1[0];

 if ((_modifiers & MOD_NUMLOCK) &&
     KS_GROUP(group[1]) == 139) {
  gindex = !MOD_ONESET(_modifiers, MOD_ANYSHIFT);
  ksym = group[gindex];
 } else {

  if ((_modifiers & (MOD_CAPSLOCK | MOD_ANYSHIFT)) ==
      MOD_CAPSLOCK) {
   gindex = 0;
   ksym = ksym_upcase(group[0]);
  } else {
   gindex = MOD_ONESET(_modifiers, MOD_ANYSHIFT);
   ksym = group[gindex];
  }
 }


 switch (KS_GROUP(ksym)) {
 case 138:
  if (ksym == KS_Multi_key) {
   update_modifier(KEYBOARD_PRESSED, 0, MOD_COMPOSE);
   _composelen = 2;
  }
  break;

 case 141:
  if (event.type != KEYBOARD_PRESSED)
   return;

  if (_composelen == 0) {
   update_modifier(KEYBOARD_PRESSED, 0, MOD_COMPOSE);
   _composelen = 1;
   _composebuf[0] = ksym;

   return;
  }
  break;
 }

 if ((event.type == KEYBOARD_PRESSED) && (_composelen > 0)) {





  if (_composelen == 2 && group == &kp.group2[0]) {
   if (kp.group1[gindex] != kp.group2[gindex])
    _composelen = 0;
  }

  if (_composelen != 0) {
   _composebuf[2 - _composelen] = ksym;
   if (--_composelen == 0) {
    ksym = wskbd_compose_value(_composebuf);
    update_modifier(KEYBOARD_RELEASED, 0, MOD_COMPOSE);
   } else {
    return;
   }
  }
 }


 switch (KS_GROUP(ksym)) {
 case 142:
 case 139:
 case 140:
  if (event.type == KEYBOARD_PRESSED) {
   for (i = 0; i < MAXHELD; ++i) {
    if (_held[i].keycode == 0) {
     _held[i].keycode = event.keycode;
     _held[i].symbol = ksym;

     break;
    }
   }
  } else {
   for (i = 0; i < MAXHELD; ++i) {
    if (_held[i].keycode == event.keycode) {
     ksym = _held[i].symbol;
     _held[i].keycode = 0;
     _held[i].symbol = 0;

     break;
    }
   }
  }

  break;
 }

 event.symbol = ksym;
 event.modifiers = _modifiers;

 _kbd_addEvent(&event);

 return;
}
