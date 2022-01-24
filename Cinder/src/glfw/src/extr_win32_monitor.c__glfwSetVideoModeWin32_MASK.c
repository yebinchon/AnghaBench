#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dm ;
struct TYPE_16__ {int /*<<< orphan*/  modeChanged; int /*<<< orphan*/  adapterName; } ;
struct TYPE_17__ {TYPE_1__ win32; } ;
typedef  TYPE_2__ _GLFWmonitor ;
struct TYPE_19__ {int dmSize; int dmFields; int dmBitsPerPel; int /*<<< orphan*/  dmDisplayFrequency; int /*<<< orphan*/  dmPelsHeight; int /*<<< orphan*/  dmPelsWidth; } ;
struct TYPE_18__ {int redBits; int greenBits; int blueBits; int /*<<< orphan*/  refreshRate; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_3__ GLFWvidmode ;
typedef  int /*<<< orphan*/  GLFWbool ;
typedef  TYPE_4__ DEVMODEW ;

/* Variables and functions */
 int /*<<< orphan*/  CDS_FULLSCREEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ DISP_CHANGE_SUCCESSFUL ; 
 int DM_BITSPERPEL ; 
 int DM_DISPLAYFREQUENCY ; 
 int DM_PELSHEIGHT ; 
 int DM_PELSWIDTH ; 
 int /*<<< orphan*/  GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,TYPE_3__ const*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 

GLFWbool FUNC6(_GLFWmonitor* monitor, const GLFWvidmode* desired)
{
    GLFWvidmode current;
    const GLFWvidmode* best;
    DEVMODEW dm;

    best = FUNC2(monitor, desired);
    FUNC5(monitor, &current);
    if (FUNC3(&current, best) == 0)
        return GLFW_TRUE;

    FUNC1(&dm, sizeof(dm));
    dm.dmSize = sizeof(DEVMODEW);
    dm.dmFields           = DM_PELSWIDTH | DM_PELSHEIGHT | DM_BITSPERPEL |
                            DM_DISPLAYFREQUENCY;
    dm.dmPelsWidth        = best->width;
    dm.dmPelsHeight       = best->height;
    dm.dmBitsPerPel       = best->redBits + best->greenBits + best->blueBits;
    dm.dmDisplayFrequency = best->refreshRate;

    if (dm.dmBitsPerPel < 15 || dm.dmBitsPerPel >= 24)
        dm.dmBitsPerPel = 32;

    if (FUNC0(monitor->win32.adapterName,
                                 &dm,
                                 NULL,
                                 CDS_FULLSCREEN,
                                 NULL) != DISP_CHANGE_SUCCESSFUL)
    {
        FUNC4(GLFW_PLATFORM_ERROR, "Win32: Failed to set video mode");
        return GLFW_FALSE;
    }

    monitor->win32.modeChanged = GLFW_TRUE;
    return GLFW_TRUE;
}