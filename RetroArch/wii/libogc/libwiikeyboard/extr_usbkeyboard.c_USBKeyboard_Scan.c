
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_3__ {int* keycode; int modifiers; } ;
struct TYPE_4__ {TYPE_1__ sc_ndata; TYPE_1__ sc_odata; } ;


 int KEY_ERROR ;
 int MAXKEYCODE ;
 int MODMAPSIZE ;
 int USBKEYBOARD_PRESSED ;
 int USBKEYBOARD_RELEASED ;
 scalar_t__ _get_input_report () ;
 TYPE_2__* _kbd ;
 int _submit (int ,int) ;
 int** _ukbd_mod_map ;

s32 USBKeyboard_Scan(void)
{
 int i, j, index;

 if (!_kbd)
  return -1;

 if (_get_input_report() < 0)
  return -2;

 if (_kbd->sc_ndata.keycode[0] == KEY_ERROR)
  return 0;

 if (_kbd->sc_ndata.modifiers != _kbd->sc_odata.modifiers) {
  for (i = 0; i < MODMAPSIZE; ++i) {
   if ((_kbd->sc_odata.modifiers & _ukbd_mod_map[i][0])
    && !(_kbd->sc_ndata.modifiers & _ukbd_mod_map[i][0]))
    _submit(USBKEYBOARD_RELEASED, _ukbd_mod_map[i][1]);
   else if ((_kbd->sc_ndata.modifiers & _ukbd_mod_map[i][0])
    && !(_kbd->sc_odata.modifiers & _ukbd_mod_map[i][0]))
    _submit(USBKEYBOARD_PRESSED, _ukbd_mod_map[i][1]);
  }
 }

 for (i = 0; i < MAXKEYCODE; i++) {
  if (_kbd->sc_odata.keycode[i] > 3) {
   index = -1;

   for (j = 0; j < MAXKEYCODE; j++) {
    if (_kbd->sc_odata.keycode[i] == _kbd->sc_ndata.keycode[j]) {
     index = j;
     break;
    }
   }

   if (index == -1)
    _submit(USBKEYBOARD_RELEASED, _kbd->sc_odata.keycode[i]);
  }

  if (_kbd->sc_ndata.keycode[i] > 3) {
   index = -1;

   for (j = 0; j < MAXKEYCODE; j++) {
    if (_kbd->sc_ndata.keycode[i] == _kbd->sc_odata.keycode[j]) {
     index = j;
     break;
    }
   }

   if (index == -1)
    _submit(USBKEYBOARD_PRESSED, _kbd->sc_ndata.keycode[i]);
  }
 }

 _kbd->sc_odata = _kbd->sc_ndata;

 return 0;
}
