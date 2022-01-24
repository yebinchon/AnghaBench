#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  oldMode; int /*<<< orphan*/  crtc; } ;
struct TYPE_13__ {TYPE_3__ x11; } ;
typedef  TYPE_4__ _GLFWmonitor ;
typedef  int /*<<< orphan*/  XRRScreenResources ;
struct TYPE_14__ {int /*<<< orphan*/  noutput; int /*<<< orphan*/  outputs; int /*<<< orphan*/  rotation; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_5__ XRRCrtcInfo ;
struct TYPE_10__ {int /*<<< orphan*/  monitorBroken; scalar_t__ available; } ;
struct TYPE_11__ {int /*<<< orphan*/  display; int /*<<< orphan*/  root; TYPE_1__ randr; } ;
struct TYPE_15__ {TYPE_2__ x11; } ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentTime ; 
 int /*<<< orphan*/  None ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__ _glfw ; 

void FUNC5(_GLFWmonitor* monitor)
{
    if (_glfw.x11.randr.available && !_glfw.x11.randr.monitorBroken)
    {
        XRRScreenResources* sr;
        XRRCrtcInfo* ci;

        if (monitor->x11.oldMode == None)
            return;

        sr = FUNC3(_glfw.x11.display, _glfw.x11.root);
        ci = FUNC2(_glfw.x11.display, sr, monitor->x11.crtc);

        FUNC4(_glfw.x11.display,
                         sr, monitor->x11.crtc,
                         CurrentTime,
                         ci->x, ci->y,
                         monitor->x11.oldMode,
                         ci->rotation,
                         ci->outputs,
                         ci->noutput);

        FUNC0(ci);
        FUNC1(sr);

        monitor->x11.oldMode = None;
    }
}