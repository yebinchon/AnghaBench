#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* winmm_js; } ;
struct TYPE_6__ {int /*<<< orphan*/  szPname; } ;
struct TYPE_5__ {char const* name; } ;
typedef  TYPE_2__ JOYCAPS ;

/* Variables and functions */
 scalar_t__ JOYERR_NOERROR ; 
 TYPE_4__ _glfw ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

const char* FUNC3(int joy)
{
    JOYCAPS jc;

    if (FUNC1(joy, &jc, sizeof(JOYCAPS)) != JOYERR_NOERROR)
        return NULL;

    FUNC2(_glfw.winmm_js[joy].name);
    _glfw.winmm_js[joy].name = FUNC0(jc.szPname);

    return _glfw.winmm_js[joy].name;
}