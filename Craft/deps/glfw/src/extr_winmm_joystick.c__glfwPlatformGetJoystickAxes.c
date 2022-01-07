
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* winmm_js; } ;
struct TYPE_9__ {int wCaps; int wVmax; int wVmin; int wUmax; int wUmin; int wRmax; int wRmin; int wZmax; int wZmin; int wYmax; int wYmin; int wXmax; int wXmin; } ;
struct TYPE_8__ {int dwSize; int dwFlags; int dwVpos; int dwUpos; int dwRpos; int dwZpos; int dwYpos; int dwXpos; } ;
struct TYPE_7__ {float* axes; } ;
typedef TYPE_2__ JOYINFOEX ;
typedef TYPE_3__ JOYCAPS ;


 int JOYCAPS_HASR ;
 int JOYCAPS_HASU ;
 int JOYCAPS_HASV ;
 int JOYCAPS_HASZ ;
 scalar_t__ JOYERR_NOERROR ;
 int JOY_RETURNR ;
 int JOY_RETURNU ;
 int JOY_RETURNV ;
 int JOY_RETURNX ;
 int JOY_RETURNY ;
 int JOY_RETURNZ ;
 TYPE_6__ _glfw ;
 scalar_t__ _glfw_joyGetDevCaps (int,TYPE_3__*,int) ;
 scalar_t__ _glfw_joyGetPosEx (int,TYPE_2__*) ;
 float normalizeAxis (int ,int ,int ) ;

const float* _glfwPlatformGetJoystickAxes(int joy, int* count)
{
    JOYCAPS jc;
    JOYINFOEX ji;
    float* axes = _glfw.winmm_js[joy].axes;

    if (_glfw_joyGetDevCaps(joy, &jc, sizeof(JOYCAPS)) != JOYERR_NOERROR)
        return ((void*)0);

    ji.dwSize = sizeof(JOYINFOEX);
    ji.dwFlags = JOY_RETURNX | JOY_RETURNY | JOY_RETURNZ |
                 JOY_RETURNR | JOY_RETURNU | JOY_RETURNV;
    if (_glfw_joyGetPosEx(joy, &ji) != JOYERR_NOERROR)
        return ((void*)0);

    axes[(*count)++] = normalizeAxis(ji.dwXpos, jc.wXmin, jc.wXmax);
    axes[(*count)++] = normalizeAxis(ji.dwYpos, jc.wYmin, jc.wYmax);

    if (jc.wCaps & JOYCAPS_HASZ)
        axes[(*count)++] = normalizeAxis(ji.dwZpos, jc.wZmin, jc.wZmax);

    if (jc.wCaps & JOYCAPS_HASR)
        axes[(*count)++] = normalizeAxis(ji.dwRpos, jc.wRmin, jc.wRmax);

    if (jc.wCaps & JOYCAPS_HASU)
        axes[(*count)++] = normalizeAxis(ji.dwUpos, jc.wUmin, jc.wUmax);

    if (jc.wCaps & JOYCAPS_HASV)
        axes[(*count)++] = normalizeAxis(ji.dwVpos, jc.wVmin, jc.wVmax);

    return axes;
}
