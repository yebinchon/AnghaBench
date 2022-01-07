
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keycode; } ;
struct TYPE_4__ {TYPE_1__ xkey; } ;


 int KEY_BACKSPACE ;
 int KEY_DOWNARROW ;
 int KEY_ENTER ;
 int KEY_EQUALS ;
 int KEY_ESCAPE ;
 int KEY_F1 ;
 int KEY_F10 ;
 int KEY_F11 ;
 int KEY_F12 ;
 int KEY_F2 ;
 int KEY_F3 ;
 int KEY_F4 ;
 int KEY_F5 ;
 int KEY_F6 ;
 int KEY_F7 ;
 int KEY_F8 ;
 int KEY_F9 ;
 int KEY_LEFTARROW ;
 int KEY_MINUS ;
 int KEY_PAUSE ;
 int KEY_RALT ;
 int KEY_RCTRL ;
 int KEY_RIGHTARROW ;
 int KEY_RSHIFT ;
 int KEY_TAB ;
 int KEY_UPARROW ;
 int XK_asciitilde ;


 int XK_space ;
 int XKeycodeToKeysym (int ,int ,int ) ;
 int X_display ;
 TYPE_2__ X_event ;

int xlatekey(void)
{

    int rc;

    switch(rc = XKeycodeToKeysym(X_display, X_event.xkey.keycode, 0))
    {
      case 139: rc = KEY_LEFTARROW; break;
      case 134: rc = KEY_RIGHTARROW; break;
      case 155: rc = KEY_DOWNARROW; break;
      case 130: rc = KEY_UPARROW; break;
      case 154: rc = KEY_ESCAPE; break;
      case 135: rc = KEY_ENTER; break;
      case 131: rc = KEY_TAB; break;
      case 153: rc = KEY_F1; break;
      case 149: rc = KEY_F2; break;
      case 148: rc = KEY_F3; break;
      case 147: rc = KEY_F4; break;
      case 146: rc = KEY_F5; break;
      case 145: rc = KEY_F6; break;
      case 144: rc = KEY_F7; break;
      case 143: rc = KEY_F8; break;
      case 142: rc = KEY_F9; break;
      case 152: rc = KEY_F10; break;
      case 151: rc = KEY_F11; break;
      case 150: rc = KEY_F12; break;

      case 159:
      case 156: rc = KEY_BACKSPACE; break;

      case 136: rc = KEY_PAUSE; break;

      case 141:
      case 129: rc = KEY_EQUALS; break;

      case 140:
      case 128: rc = KEY_MINUS; break;

      case 133:
      case 132:
 rc = KEY_RSHIFT;
 break;

      case 158:
      case 157:
 rc = KEY_RCTRL;
 break;

      case 161:
      case 138:
      case 160:
      case 137:
 rc = KEY_RALT;
 break;

      default:
 if (rc >= XK_space && rc <= XK_asciitilde)
     rc = rc - XK_space + ' ';
 if (rc >= 'A' && rc <= 'Z')
     rc = rc - 'A' + 'a';
 break;
    }

    return rc;

}
