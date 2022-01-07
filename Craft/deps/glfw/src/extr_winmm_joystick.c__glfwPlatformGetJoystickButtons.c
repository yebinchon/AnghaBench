
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* winmm_js; } ;
struct TYPE_9__ {int wCaps; scalar_t__ wNumButtons; } ;
struct TYPE_8__ {int dwSize; int dwFlags; unsigned long dwButtons; int dwPOV; } ;
struct TYPE_7__ {unsigned char* buttons; } ;
typedef TYPE_2__ JOYINFOEX ;
typedef TYPE_3__ JOYCAPS ;


 unsigned char GLFW_PRESS ;
 unsigned char GLFW_RELEASE ;
 int JOYCAPS_HASPOV ;
 int JOYCAPS_POV4DIR ;
 scalar_t__ JOYERR_NOERROR ;
 int JOY_RETURNBUTTONS ;
 int JOY_RETURNPOV ;
 TYPE_6__ _glfw ;
 scalar_t__ _glfw_joyGetDevCaps (int,TYPE_3__*,int) ;
 scalar_t__ _glfw_joyGetPosEx (int,TYPE_2__*) ;

const unsigned char* _glfwPlatformGetJoystickButtons(int joy, int* count)
{
    JOYCAPS jc;
    JOYINFOEX ji;
    unsigned char* buttons = _glfw.winmm_js[joy].buttons;

    if (_glfw_joyGetDevCaps(joy, &jc, sizeof(JOYCAPS)) != JOYERR_NOERROR)
        return ((void*)0);

    ji.dwSize = sizeof(JOYINFOEX);
    ji.dwFlags = JOY_RETURNBUTTONS | JOY_RETURNPOV;
    if (_glfw_joyGetPosEx(joy, &ji) != JOYERR_NOERROR)
        return ((void*)0);

    while (*count < (int) jc.wNumButtons)
    {
        buttons[*count] = (unsigned char)
            (ji.dwButtons & (1UL << *count) ? GLFW_PRESS : GLFW_RELEASE);
        (*count)++;
    }






    if ((jc.wCaps & JOYCAPS_HASPOV) && (jc.wCaps & JOYCAPS_POV4DIR))
    {
        int i, value = ji.dwPOV / 100 / 45;


        const int directions[9] = { 1, 3, 2, 6, 4, 12, 8, 9, 0 };

        if (value < 0 || value > 8)
            value = 8;

        for (i = 0; i < 4; i++)
        {
            if (directions[value] & (1 << i))
                buttons[(*count)++] = GLFW_PRESS;
            else
                buttons[(*count)++] = GLFW_RELEASE;
        }
    }

    return buttons;
}
