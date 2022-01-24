#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_5__* XkbDescPtr ;
struct TYPE_11__ {scalar_t__ available; } ;
struct TYPE_12__ {int* publicKeys; int* nativeKeys; int /*<<< orphan*/  display; TYPE_1__ xkb; } ;
struct TYPE_16__ {TYPE_2__ x11; } ;
struct TYPE_15__ {int min_key_code; int max_key_code; TYPE_4__* names; } ;
struct TYPE_14__ {TYPE_3__* keys; } ;
struct TYPE_13__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
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
 int GLFW_KEY_C ; 
 int GLFW_KEY_COMMA ; 
 int GLFW_KEY_D ; 
 int GLFW_KEY_E ; 
 int GLFW_KEY_EQUAL ; 
 int GLFW_KEY_F ; 
 int GLFW_KEY_G ; 
 int GLFW_KEY_GRAVE_ACCENT ; 
 int GLFW_KEY_H ; 
 int GLFW_KEY_I ; 
 int GLFW_KEY_J ; 
 int GLFW_KEY_K ; 
 int GLFW_KEY_L ; 
 int GLFW_KEY_LEFT_BRACKET ; 
 int GLFW_KEY_M ; 
 int GLFW_KEY_MINUS ; 
 int GLFW_KEY_N ; 
 int GLFW_KEY_O ; 
 int GLFW_KEY_P ; 
 int GLFW_KEY_PERIOD ; 
 int GLFW_KEY_Q ; 
 int GLFW_KEY_R ; 
 int GLFW_KEY_RIGHT_BRACKET ; 
 int GLFW_KEY_S ; 
 int GLFW_KEY_SEMICOLON ; 
 int GLFW_KEY_SLASH ; 
 int GLFW_KEY_T ; 
 int GLFW_KEY_U ; 
 int GLFW_KEY_UNKNOWN ; 
 int GLFW_KEY_V ; 
 int GLFW_KEY_W ; 
 int GLFW_KEY_WORLD_1 ; 
 int GLFW_KEY_X ; 
 int GLFW_KEY_Y ; 
 int GLFW_KEY_Z ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int XkbKeyNameLength ; 
 int /*<<< orphan*/  XkbKeyNamesMask ; 
 int /*<<< orphan*/  XkbUseCoreKbd ; 
 TYPE_6__ _glfw ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(void)
{
    int scancode, key;

    FUNC5(_glfw.x11.publicKeys, -1, sizeof(_glfw.x11.publicKeys));
    FUNC5(_glfw.x11.nativeKeys, -1, sizeof(_glfw.x11.nativeKeys));

    if (_glfw.x11.xkb.available)
    {
        // Use XKB to determine physical key locations independently of the current
        // keyboard layout

        char name[XkbKeyNameLength + 1];
        XkbDescPtr desc = FUNC2(_glfw.x11.display, 0, XkbUseCoreKbd);
        FUNC3(_glfw.x11.display, XkbKeyNamesMask, desc);

        // Find the X11 key code -> GLFW key code mapping
        for (scancode = desc->min_key_code;  scancode <= desc->max_key_code;  scancode++)
        {
            FUNC4(name, desc->names->keys[scancode].name, XkbKeyNameLength);
            name[XkbKeyNameLength] = '\0';

            // Map the key name to a GLFW key code. Note: We only map printable
            // keys here, and we use the US keyboard layout. The rest of the
            // keys (function keys) are mapped using traditional KeySym
            // translations.
            if (FUNC6(name, "TLDE") == 0) key = GLFW_KEY_GRAVE_ACCENT;
            else if (FUNC6(name, "AE01") == 0) key = GLFW_KEY_1;
            else if (FUNC6(name, "AE02") == 0) key = GLFW_KEY_2;
            else if (FUNC6(name, "AE03") == 0) key = GLFW_KEY_3;
            else if (FUNC6(name, "AE04") == 0) key = GLFW_KEY_4;
            else if (FUNC6(name, "AE05") == 0) key = GLFW_KEY_5;
            else if (FUNC6(name, "AE06") == 0) key = GLFW_KEY_6;
            else if (FUNC6(name, "AE07") == 0) key = GLFW_KEY_7;
            else if (FUNC6(name, "AE08") == 0) key = GLFW_KEY_8;
            else if (FUNC6(name, "AE09") == 0) key = GLFW_KEY_9;
            else if (FUNC6(name, "AE10") == 0) key = GLFW_KEY_0;
            else if (FUNC6(name, "AE11") == 0) key = GLFW_KEY_MINUS;
            else if (FUNC6(name, "AE12") == 0) key = GLFW_KEY_EQUAL;
            else if (FUNC6(name, "AD01") == 0) key = GLFW_KEY_Q;
            else if (FUNC6(name, "AD02") == 0) key = GLFW_KEY_W;
            else if (FUNC6(name, "AD03") == 0) key = GLFW_KEY_E;
            else if (FUNC6(name, "AD04") == 0) key = GLFW_KEY_R;
            else if (FUNC6(name, "AD05") == 0) key = GLFW_KEY_T;
            else if (FUNC6(name, "AD06") == 0) key = GLFW_KEY_Y;
            else if (FUNC6(name, "AD07") == 0) key = GLFW_KEY_U;
            else if (FUNC6(name, "AD08") == 0) key = GLFW_KEY_I;
            else if (FUNC6(name, "AD09") == 0) key = GLFW_KEY_O;
            else if (FUNC6(name, "AD10") == 0) key = GLFW_KEY_P;
            else if (FUNC6(name, "AD11") == 0) key = GLFW_KEY_LEFT_BRACKET;
            else if (FUNC6(name, "AD12") == 0) key = GLFW_KEY_RIGHT_BRACKET;
            else if (FUNC6(name, "AC01") == 0) key = GLFW_KEY_A;
            else if (FUNC6(name, "AC02") == 0) key = GLFW_KEY_S;
            else if (FUNC6(name, "AC03") == 0) key = GLFW_KEY_D;
            else if (FUNC6(name, "AC04") == 0) key = GLFW_KEY_F;
            else if (FUNC6(name, "AC05") == 0) key = GLFW_KEY_G;
            else if (FUNC6(name, "AC06") == 0) key = GLFW_KEY_H;
            else if (FUNC6(name, "AC07") == 0) key = GLFW_KEY_J;
            else if (FUNC6(name, "AC08") == 0) key = GLFW_KEY_K;
            else if (FUNC6(name, "AC09") == 0) key = GLFW_KEY_L;
            else if (FUNC6(name, "AC10") == 0) key = GLFW_KEY_SEMICOLON;
            else if (FUNC6(name, "AC11") == 0) key = GLFW_KEY_APOSTROPHE;
            else if (FUNC6(name, "AB01") == 0) key = GLFW_KEY_Z;
            else if (FUNC6(name, "AB02") == 0) key = GLFW_KEY_X;
            else if (FUNC6(name, "AB03") == 0) key = GLFW_KEY_C;
            else if (FUNC6(name, "AB04") == 0) key = GLFW_KEY_V;
            else if (FUNC6(name, "AB05") == 0) key = GLFW_KEY_B;
            else if (FUNC6(name, "AB06") == 0) key = GLFW_KEY_N;
            else if (FUNC6(name, "AB07") == 0) key = GLFW_KEY_M;
            else if (FUNC6(name, "AB08") == 0) key = GLFW_KEY_COMMA;
            else if (FUNC6(name, "AB09") == 0) key = GLFW_KEY_PERIOD;
            else if (FUNC6(name, "AB10") == 0) key = GLFW_KEY_SLASH;
            else if (FUNC6(name, "BKSL") == 0) key = GLFW_KEY_BACKSLASH;
            else if (FUNC6(name, "LSGT") == 0) key = GLFW_KEY_WORLD_1;
            else key = GLFW_KEY_UNKNOWN;

            if ((scancode >= 0) && (scancode < 256))
                _glfw.x11.publicKeys[scancode] = key;
        }

        FUNC1(desc, XkbKeyNamesMask, True);
        FUNC0(desc, 0, True);
    }

    for (scancode = 0;  scancode < 256;  scancode++)
    {
        // Translate the un-translated key codes using traditional X11 KeySym
        // lookups
        if (_glfw.x11.publicKeys[scancode] < 0)
            _glfw.x11.publicKeys[scancode] = FUNC7(scancode);

        // Store the reverse translation for faster key name lookup
        if (_glfw.x11.publicKeys[scancode] > 0)
            _glfw.x11.nativeKeys[_glfw.x11.publicKeys[scancode]] = scancode;
    }
}