#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* winmm_js; } ;
struct TYPE_9__ {int wCaps; int /*<<< orphan*/  wVmax; int /*<<< orphan*/  wVmin; int /*<<< orphan*/  wUmax; int /*<<< orphan*/  wUmin; int /*<<< orphan*/  wRmax; int /*<<< orphan*/  wRmin; int /*<<< orphan*/  wZmax; int /*<<< orphan*/  wZmin; int /*<<< orphan*/  wYmax; int /*<<< orphan*/  wYmin; int /*<<< orphan*/  wXmax; int /*<<< orphan*/  wXmin; } ;
struct TYPE_8__ {int dwSize; int dwFlags; int /*<<< orphan*/  dwVpos; int /*<<< orphan*/  dwUpos; int /*<<< orphan*/  dwRpos; int /*<<< orphan*/  dwZpos; int /*<<< orphan*/  dwYpos; int /*<<< orphan*/  dwXpos; } ;
struct TYPE_7__ {float* axes; } ;
typedef  TYPE_2__ JOYINFOEX ;
typedef  TYPE_3__ JOYCAPS ;

/* Variables and functions */
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
 scalar_t__ FUNC0 (int,TYPE_3__*,int) ; 
 scalar_t__ FUNC1 (int,TYPE_2__*) ; 
 float FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const float* FUNC3(int joy, int* count)
{
    JOYCAPS jc;
    JOYINFOEX ji;
    float* axes = _glfw.winmm_js[joy].axes;

    if (FUNC0(joy, &jc, sizeof(JOYCAPS)) != JOYERR_NOERROR)
        return NULL;

    ji.dwSize = sizeof(JOYINFOEX);
    ji.dwFlags = JOY_RETURNX | JOY_RETURNY | JOY_RETURNZ |
                 JOY_RETURNR | JOY_RETURNU | JOY_RETURNV;
    if (FUNC1(joy, &ji) != JOYERR_NOERROR)
        return NULL;

    axes[(*count)++] = FUNC2(ji.dwXpos, jc.wXmin, jc.wXmax);
    axes[(*count)++] = FUNC2(ji.dwYpos, jc.wYmin, jc.wYmax);

    if (jc.wCaps & JOYCAPS_HASZ)
        axes[(*count)++] = FUNC2(ji.dwZpos, jc.wZmin, jc.wZmax);

    if (jc.wCaps & JOYCAPS_HASR)
        axes[(*count)++] = FUNC2(ji.dwRpos, jc.wRmin, jc.wRmax);

    if (jc.wCaps & JOYCAPS_HASU)
        axes[(*count)++] = FUNC2(ji.dwUpos, jc.wUmin, jc.wUmax);

    if (jc.wCaps & JOYCAPS_HASV)
        axes[(*count)++] = FUNC2(ji.dwVpos, jc.wVmin, jc.wVmax);

    return axes;
}