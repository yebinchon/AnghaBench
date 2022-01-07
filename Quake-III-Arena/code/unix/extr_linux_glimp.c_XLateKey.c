
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int XKeyEvent ;
struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int (* Printf ) (int ,char*,int) ;} ;
typedef int KeySym ;


 int K_ALT ;
 int K_BACKSPACE ;
 int K_CTRL ;
 int K_DEL ;
 int K_DOWNARROW ;
 int K_END ;
 int K_ENTER ;
 int K_ESCAPE ;
 int K_F1 ;
 int K_F10 ;
 int K_F11 ;
 int K_F12 ;
 int K_F2 ;
 int K_F3 ;
 int K_F4 ;
 int K_F5 ;
 int K_F6 ;
 int K_F7 ;
 int K_F8 ;
 int K_F9 ;
 int K_HOME ;
 int K_INS ;
 int K_KP_5 ;
 int K_KP_DEL ;
 int K_KP_DOWNARROW ;
 int K_KP_END ;
 int K_KP_ENTER ;
 int K_KP_HOME ;
 int K_KP_INS ;
 int K_KP_LEFTARROW ;
 int K_KP_MINUS ;
 int K_KP_PGDN ;
 int K_KP_PGUP ;
 int K_KP_PLUS ;
 int K_KP_RIGHTARROW ;
 int K_KP_SLASH ;
 int K_KP_UPARROW ;
 int K_LEFTARROW ;
 int K_PAUSE ;
 int K_PGDN ;
 int K_PGUP ;
 int K_RIGHTARROW ;
 int K_SHIFT ;
 int K_SPACE ;
 int K_TAB ;
 int K_UPARROW ;
 int PRINT_ALL ;
 int XLookupString (int *,char*,int,int*,int ) ;
 TYPE_2__* com_developer ;
 TYPE_1__ ri ;
 int stub1 (int ,char*,int,char*,int) ;
 int stub2 (int ,char*,int) ;

__attribute__((used)) static char *XLateKey(XKeyEvent *ev, int *key)
{
  static char buf[64];
  KeySym keysym;
  int XLookupRet;

  *key = 0;

  XLookupRet = XLookupString(ev, buf, sizeof buf, &keysym, 0);




  switch (keysym)
  {
  case 156:
  case 170: *key = K_KP_PGUP; break;
  case 147: *key = K_PGUP; break;

  case 157:
  case 175: *key = K_KP_PGDN; break;
  case 148: *key = K_PGDN; break;

  case 161: *key = K_KP_HOME; break;
  case 172: *key = K_KP_HOME; break;
  case 180: *key = K_HOME; break;

  case 163:
  case 177: *key = K_KP_END; break;
  case 195: *key = K_END; break;

  case 159: *key = K_KP_LEFTARROW; break;
  case 174: *key = K_KP_LEFTARROW; break;
  case 151: *key = K_LEFTARROW; break;

  case 155: *key = K_KP_RIGHTARROW; break;
  case 173: *key = K_KP_RIGHTARROW; break;
  case 144: *key = K_RIGHTARROW; break;

  case 164:
  case 176: *key = K_KP_DOWNARROW; break;
  case 196: *key = K_DOWNARROW; break;

  case 152:
  case 171: *key = K_KP_UPARROW; break;
  case 140: *key = K_UPARROW; break;

  case 194: *key = K_ESCAPE; break;

  case 162: *key = K_KP_ENTER; break;
  case 145: *key = K_ENTER; break;

  case 141: *key = K_TAB; break;

  case 192: *key = K_F1; break;

  case 188: *key = K_F2; break;

  case 187: *key = K_F3; break;

  case 186: *key = K_F4; break;

  case 185: *key = K_F5; break;

  case 184: *key = K_F6; break;

  case 183: *key = K_F7; break;

  case 182: *key = K_F8; break;

  case 181: *key = K_F9; break;

  case 191: *key = K_F10; break;

  case 190: *key = K_F11; break;

  case 189: *key = K_F12; break;



  case 200: *key = K_BACKSPACE; break;

  case 166:
  case 167: *key = K_KP_DEL; break;
  case 197: *key = K_DEL; break;

  case 146: *key = K_PAUSE; break;

  case 143:
  case 142: *key = K_SHIFT; break;

  case 193:
  case 199:
  case 198: *key = K_CTRL; break;

  case 202:
  case 150:
  case 201:
  case 149: *key = K_ALT; break;

  case 168: *key = K_KP_5; break;

  case 179: *key = K_INS; break;
  case 160:
  case 178: *key = K_KP_INS; break;

  case 158: *key = '*'; break;
  case 169: *key = K_KP_PLUS; break;
  case 153: *key = K_KP_MINUS; break;
  case 165: *key = K_KP_SLASH; break;


  case 134: *key = '1'; break;
  case 136: *key = '2'; break;
  case 133: *key = '3'; break;
  case 135: *key = '4'; break;
  case 130: *key = '5'; break;
  case 138: *key = '6'; break;
  case 139: *key = '7'; break;
  case 137: *key = '8'; break;
  case 132: *key = '9'; break;
  case 131: *key = '0'; break;





  case 128: *key = '~'; break;


 case 129:
 case 154: *key = K_SPACE; break;

  default:
    if (XLookupRet == 0)
    {
      if (com_developer->value)
      {
        ri.Printf(PRINT_ALL, "Warning: XLookupString failed on KeySym %d\n", keysym);
      }
      return ((void*)0);
    }
    else
    {

      *key = *(unsigned char *)buf;
      if (*key >= 'A' && *key <= 'Z')
        *key = *key - 'A' + 'a';


      else if (*key >= 1 && *key <= 26)
        *key = *key + 'a' - 1;
    }
    break;
  }

  return buf;
}
