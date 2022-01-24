#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  adapterName; } ;
struct TYPE_8__ {TYPE_1__ win32; } ;
typedef  TYPE_2__ _GLFWmonitor ;
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_9__ {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_3__ GLFWgammaramp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void FUNC5(_GLFWmonitor* monitor, GLFWgammaramp* ramp)
{
    HDC dc;
    WORD values[768];

    dc = FUNC0(L"DISPLAY", monitor->win32.adapterName, NULL, NULL);
    FUNC2(dc, values);
    FUNC1(dc);

    FUNC3(ramp, 256);

    FUNC4(ramp->red,   values +   0, 256 * sizeof(unsigned short));
    FUNC4(ramp->green, values + 256, 256 * sizeof(unsigned short));
    FUNC4(ramp->blue,  values + 512, 256 * sizeof(unsigned short));
}