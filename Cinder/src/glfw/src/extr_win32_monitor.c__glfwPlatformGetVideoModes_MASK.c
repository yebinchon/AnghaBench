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
struct TYPE_16__ {int /*<<< orphan*/  adapterName; scalar_t__ modesPruned; } ;
struct TYPE_17__ {TYPE_1__ win32; } ;
typedef  TYPE_2__ _GLFWmonitor ;
struct TYPE_19__ {int dmSize; int dmBitsPerPel; int /*<<< orphan*/  dmDisplayFrequency; int /*<<< orphan*/  dmPelsHeight; int /*<<< orphan*/  dmPelsWidth; } ;
struct TYPE_18__ {int /*<<< orphan*/  blueBits; int /*<<< orphan*/  greenBits; int /*<<< orphan*/  redBits; int /*<<< orphan*/  refreshRate; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_3__ GLFWvidmode ;
typedef  TYPE_4__ DEVMODEW ;

/* Variables and functions */
 int /*<<< orphan*/  CDS_TEST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ DISP_CHANGE_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int) ; 

GLFWvidmode* FUNC8(_GLFWmonitor* monitor, int* count)
{
    int modeIndex = 0, size = 0;
    GLFWvidmode* result = NULL;

    *count = 0;

    for (;;)
    {
        int i;
        GLFWvidmode mode;
        DEVMODEW dm;

        FUNC2(&dm, sizeof(DEVMODEW));
        dm.dmSize = sizeof(DEVMODEW);

        if (!FUNC1(monitor->win32.adapterName, modeIndex, &dm))
            break;

        modeIndex++;

        // Skip modes with less than 15 BPP
        if (dm.dmBitsPerPel < 15)
            continue;

        mode.width  = dm.dmPelsWidth;
        mode.height = dm.dmPelsHeight;
        mode.refreshRate = dm.dmDisplayFrequency;
        FUNC5(dm.dmBitsPerPel,
                      &mode.redBits,
                      &mode.greenBits,
                      &mode.blueBits);

        for (i = 0;  i < *count;  i++)
        {
            if (FUNC3(result + i, &mode) == 0)
                break;
        }

        // Skip duplicate modes
        if (i < *count)
            continue;

        if (monitor->win32.modesPruned)
        {
            // Skip modes not supported by the connected displays
            if (FUNC0(monitor->win32.adapterName,
                                         &dm,
                                         NULL,
                                         CDS_TEST,
                                         NULL) != DISP_CHANGE_SUCCESSFUL)
            {
                continue;
            }
        }

        if (*count == size)
        {
            size += 128;
            result = (GLFWvidmode*) FUNC7(result, size * sizeof(GLFWvidmode));
        }

        (*count)++;
        result[*count - 1] = mode;
    }

    if (!*count)
    {
        // HACK: Report the current mode if no valid modes were found
        result = FUNC6(1, sizeof(GLFWvidmode));
        FUNC4(monitor, result);
        *count = 1;
    }

    return result;
}