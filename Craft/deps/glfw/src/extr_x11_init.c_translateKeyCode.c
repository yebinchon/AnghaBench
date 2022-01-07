
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ available; } ;
struct TYPE_5__ {int display; TYPE_1__ xkb; } ;
struct TYPE_6__ {TYPE_2__ x11; } ;
typedef int KeySym ;


 int GLFW_KEY_0 ;
 int GLFW_KEY_1 ;
 int GLFW_KEY_2 ;
 int GLFW_KEY_3 ;
 int GLFW_KEY_4 ;
 int GLFW_KEY_5 ;
 int GLFW_KEY_6 ;
 int GLFW_KEY_7 ;
 int GLFW_KEY_8 ;
 int GLFW_KEY_9 ;
 int GLFW_KEY_A ;
 int GLFW_KEY_APOSTROPHE ;
 int GLFW_KEY_B ;
 int GLFW_KEY_BACKSLASH ;
 int GLFW_KEY_BACKSPACE ;
 int GLFW_KEY_C ;
 int GLFW_KEY_CAPS_LOCK ;
 int GLFW_KEY_COMMA ;
 int GLFW_KEY_D ;
 int GLFW_KEY_DELETE ;
 int GLFW_KEY_DOWN ;
 int GLFW_KEY_E ;
 int GLFW_KEY_END ;
 int GLFW_KEY_ENTER ;
 int GLFW_KEY_EQUAL ;
 int GLFW_KEY_ESCAPE ;
 int GLFW_KEY_F ;
 int GLFW_KEY_F1 ;
 int GLFW_KEY_F10 ;
 int GLFW_KEY_F11 ;
 int GLFW_KEY_F12 ;
 int GLFW_KEY_F13 ;
 int GLFW_KEY_F14 ;
 int GLFW_KEY_F15 ;
 int GLFW_KEY_F16 ;
 int GLFW_KEY_F17 ;
 int GLFW_KEY_F18 ;
 int GLFW_KEY_F19 ;
 int GLFW_KEY_F2 ;
 int GLFW_KEY_F20 ;
 int GLFW_KEY_F21 ;
 int GLFW_KEY_F22 ;
 int GLFW_KEY_F23 ;
 int GLFW_KEY_F24 ;
 int GLFW_KEY_F25 ;
 int GLFW_KEY_F3 ;
 int GLFW_KEY_F4 ;
 int GLFW_KEY_F5 ;
 int GLFW_KEY_F6 ;
 int GLFW_KEY_F7 ;
 int GLFW_KEY_F8 ;
 int GLFW_KEY_F9 ;
 int GLFW_KEY_G ;
 int GLFW_KEY_GRAVE_ACCENT ;
 int GLFW_KEY_H ;
 int GLFW_KEY_HOME ;
 int GLFW_KEY_I ;
 int GLFW_KEY_INSERT ;
 int GLFW_KEY_J ;
 int GLFW_KEY_K ;
 int GLFW_KEY_KP_0 ;
 int GLFW_KEY_KP_1 ;
 int GLFW_KEY_KP_2 ;
 int GLFW_KEY_KP_3 ;
 int GLFW_KEY_KP_4 ;
 int GLFW_KEY_KP_5 ;
 int GLFW_KEY_KP_6 ;
 int GLFW_KEY_KP_7 ;
 int GLFW_KEY_KP_8 ;
 int GLFW_KEY_KP_9 ;
 int GLFW_KEY_KP_ADD ;
 int GLFW_KEY_KP_DECIMAL ;
 int GLFW_KEY_KP_DIVIDE ;
 int GLFW_KEY_KP_ENTER ;
 int GLFW_KEY_KP_EQUAL ;
 int GLFW_KEY_KP_MULTIPLY ;
 int GLFW_KEY_KP_SUBTRACT ;
 int GLFW_KEY_L ;
 int GLFW_KEY_LEFT ;
 int GLFW_KEY_LEFT_ALT ;
 int GLFW_KEY_LEFT_BRACKET ;
 int GLFW_KEY_LEFT_CONTROL ;
 int GLFW_KEY_LEFT_SHIFT ;
 int GLFW_KEY_LEFT_SUPER ;
 int GLFW_KEY_M ;
 int GLFW_KEY_MENU ;
 int GLFW_KEY_MINUS ;
 int GLFW_KEY_N ;
 int GLFW_KEY_NUM_LOCK ;
 int GLFW_KEY_O ;
 int GLFW_KEY_P ;
 int GLFW_KEY_PAGE_DOWN ;
 int GLFW_KEY_PAGE_UP ;
 int GLFW_KEY_PAUSE ;
 int GLFW_KEY_PERIOD ;
 int GLFW_KEY_PRINT_SCREEN ;
 int GLFW_KEY_Q ;
 int GLFW_KEY_R ;
 int GLFW_KEY_RIGHT ;
 int GLFW_KEY_RIGHT_ALT ;
 int GLFW_KEY_RIGHT_BRACKET ;
 int GLFW_KEY_RIGHT_CONTROL ;
 int GLFW_KEY_RIGHT_SHIFT ;
 int GLFW_KEY_RIGHT_SUPER ;
 int GLFW_KEY_S ;
 int GLFW_KEY_SCROLL_LOCK ;
 int GLFW_KEY_SEMICOLON ;
 int GLFW_KEY_SLASH ;
 int GLFW_KEY_SPACE ;
 int GLFW_KEY_T ;
 int GLFW_KEY_TAB ;
 int GLFW_KEY_U ;
 int GLFW_KEY_UNKNOWN ;
 int GLFW_KEY_UP ;
 int GLFW_KEY_V ;
 int GLFW_KEY_W ;
 int GLFW_KEY_WORLD_1 ;
 int GLFW_KEY_X ;
 int GLFW_KEY_Y ;
 int GLFW_KEY_Z ;
 int XFree (int*) ;
 int* XGetKeyboardMapping (int ,int,int,int*) ;
 int XkbKeycodeToKeysym (int ,int,int ,int) ;
 TYPE_3__ _glfw ;

__attribute__((used)) static int translateKeyCode(int scancode)
{
    int keySym;


    if (scancode < 8 || scancode > 255)
        return GLFW_KEY_UNKNOWN;

    if (_glfw.x11.xkb.available)
    {




        keySym = XkbKeycodeToKeysym(_glfw.x11.display, scancode, 0, 1);
        switch (keySym)
        {
            case 213: return GLFW_KEY_KP_0;
            case 212: return GLFW_KEY_KP_1;
            case 211: return GLFW_KEY_KP_2;
            case 210: return GLFW_KEY_KP_3;
            case 209: return GLFW_KEY_KP_4;
            case 208: return GLFW_KEY_KP_5;
            case 207: return GLFW_KEY_KP_6;
            case 206: return GLFW_KEY_KP_7;
            case 205: return GLFW_KEY_KP_8;
            case 204: return GLFW_KEY_KP_9;
            case 188:
            case 202: return GLFW_KEY_KP_DECIMAL;
            case 196: return GLFW_KEY_KP_EQUAL;
            case 197: return GLFW_KEY_KP_ENTER;
            default: break;
        }




        keySym = XkbKeycodeToKeysym(_glfw.x11.display, scancode, 0, 0);
    }
    else
    {
        int dummy;
        KeySym* keySyms;

        keySyms = XGetKeyboardMapping(_glfw.x11.display, scancode, 1, &dummy);
        keySym = keySyms[0];
        XFree(keySyms);
    }

    switch (keySym)
    {
        case 242: return GLFW_KEY_ESCAPE;
        case 168: return GLFW_KEY_TAB;
        case 172: return GLFW_KEY_LEFT_SHIFT;
        case 171: return GLFW_KEY_RIGHT_SHIFT;
        case 247: return GLFW_KEY_LEFT_CONTROL;
        case 246: return GLFW_KEY_RIGHT_CONTROL;
        case 183:
        case 251: return GLFW_KEY_LEFT_ALT;
        case 181:
        case 215:
        case 182:
        case 250: return GLFW_KEY_RIGHT_ALT;
        case 170: return GLFW_KEY_LEFT_SUPER;
        case 169: return GLFW_KEY_RIGHT_SUPER;
        case 184: return GLFW_KEY_MENU;
        case 180: return GLFW_KEY_NUM_LOCK;
        case 248: return GLFW_KEY_CAPS_LOCK;
        case 176: return GLFW_KEY_PRINT_SCREEN;
        case 173: return GLFW_KEY_SCROLL_LOCK;
        case 177: return GLFW_KEY_PAUSE;
        case 245: return GLFW_KEY_DELETE;
        case 249: return GLFW_KEY_BACKSPACE;
        case 175: return GLFW_KEY_ENTER;
        case 216: return GLFW_KEY_HOME;
        case 243: return GLFW_KEY_END;
        case 178: return GLFW_KEY_PAGE_UP;
        case 179: return GLFW_KEY_PAGE_DOWN;
        case 214: return GLFW_KEY_INSERT;
        case 185: return GLFW_KEY_LEFT;
        case 174: return GLFW_KEY_RIGHT;
        case 244: return GLFW_KEY_DOWN;
        case 167: return GLFW_KEY_UP;
        case 241: return GLFW_KEY_F1;
        case 230: return GLFW_KEY_F2;
        case 223: return GLFW_KEY_F3;
        case 222: return GLFW_KEY_F4;
        case 221: return GLFW_KEY_F5;
        case 220: return GLFW_KEY_F6;
        case 219: return GLFW_KEY_F7;
        case 218: return GLFW_KEY_F8;
        case 217: return GLFW_KEY_F9;
        case 240: return GLFW_KEY_F10;
        case 239: return GLFW_KEY_F11;
        case 238: return GLFW_KEY_F12;
        case 237: return GLFW_KEY_F13;
        case 236: return GLFW_KEY_F14;
        case 235: return GLFW_KEY_F15;
        case 234: return GLFW_KEY_F16;
        case 233: return GLFW_KEY_F17;
        case 232: return GLFW_KEY_F18;
        case 231: return GLFW_KEY_F19;
        case 229: return GLFW_KEY_F20;
        case 228: return GLFW_KEY_F21;
        case 227: return GLFW_KEY_F22;
        case 226: return GLFW_KEY_F23;
        case 225: return GLFW_KEY_F24;
        case 224: return GLFW_KEY_F25;


        case 200: return GLFW_KEY_KP_DIVIDE;
        case 192: return GLFW_KEY_KP_MULTIPLY;
        case 187: return GLFW_KEY_KP_SUBTRACT;
        case 203: return GLFW_KEY_KP_ADD;


        case 194: return GLFW_KEY_KP_0;
        case 198: return GLFW_KEY_KP_1;
        case 199: return GLFW_KEY_KP_2;
        case 191: return GLFW_KEY_KP_3;
        case 193: return GLFW_KEY_KP_4;
        case 189: return GLFW_KEY_KP_6;
        case 195: return GLFW_KEY_KP_7;
        case 186: return GLFW_KEY_KP_8;
        case 190: return GLFW_KEY_KP_9;
        case 201: return GLFW_KEY_KP_DECIMAL;
        case 196: return GLFW_KEY_KP_EQUAL;
        case 197: return GLFW_KEY_KP_ENTER;





        case 166: return GLFW_KEY_A;
        case 164: return GLFW_KEY_B;
        case 160: return GLFW_KEY_C;
        case 158: return GLFW_KEY_D;
        case 157: return GLFW_KEY_E;
        case 155: return GLFW_KEY_F;
        case 154: return GLFW_KEY_G;
        case 152: return GLFW_KEY_H;
        case 151: return GLFW_KEY_I;
        case 150: return GLFW_KEY_J;
        case 149: return GLFW_KEY_K;
        case 148: return GLFW_KEY_L;
        case 146: return GLFW_KEY_M;
        case 144: return GLFW_KEY_N;
        case 143: return GLFW_KEY_O;
        case 142: return GLFW_KEY_P;
        case 140: return GLFW_KEY_Q;
        case 139: return GLFW_KEY_R;
        case 138: return GLFW_KEY_S;
        case 134: return GLFW_KEY_T;
        case 133: return GLFW_KEY_U;
        case 132: return GLFW_KEY_V;
        case 131: return GLFW_KEY_W;
        case 130: return GLFW_KEY_X;
        case 129: return GLFW_KEY_Y;
        case 128: return GLFW_KEY_Z;
        case 260: return GLFW_KEY_1;
        case 259: return GLFW_KEY_2;
        case 258: return GLFW_KEY_3;
        case 257: return GLFW_KEY_4;
        case 256: return GLFW_KEY_5;
        case 255: return GLFW_KEY_6;
        case 254: return GLFW_KEY_7;
        case 253: return GLFW_KEY_8;
        case 252: return GLFW_KEY_9;
        case 261: return GLFW_KEY_0;
        case 135: return GLFW_KEY_SPACE;
        case 145: return GLFW_KEY_MINUS;
        case 156: return GLFW_KEY_EQUAL;
        case 162: return GLFW_KEY_LEFT_BRACKET;
        case 161: return GLFW_KEY_RIGHT_BRACKET;
        case 163: return GLFW_KEY_BACKSLASH;
        case 137: return GLFW_KEY_SEMICOLON;
        case 165: return GLFW_KEY_APOSTROPHE;
        case 153: return GLFW_KEY_GRAVE_ACCENT;
        case 159: return GLFW_KEY_COMMA;
        case 141: return GLFW_KEY_PERIOD;
        case 136: return GLFW_KEY_SLASH;
        case 147: return GLFW_KEY_WORLD_1;
        default: break;
    }


    return GLFW_KEY_UNKNOWN;
}
