#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ handle; scalar_t__ colormap; int /*<<< orphan*/ * ic; } ;
struct TYPE_11__ {TYPE_1__ x11; scalar_t__ monitor; } ;
typedef  TYPE_3__ _GLFWwindow ;
typedef  scalar_t__ Window ;
struct TYPE_10__ {int /*<<< orphan*/  display; int /*<<< orphan*/  context; int /*<<< orphan*/  CLIPBOARD; } ;
struct TYPE_12__ {TYPE_2__ x11; } ;
typedef  scalar_t__ Colormap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_8__ _glfw ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

void FUNC10(_GLFWwindow* window)
{
    if (window->monitor)
        FUNC8(window);

    if (window->x11.ic)
    {
        FUNC1(window->x11.ic);
        window->x11.ic = NULL;
    }

    FUNC7(window);

    if (window->x11.handle)
    {
        if (FUNC5(_glfw.x11.display, _glfw.x11.CLIPBOARD) ==
            window->x11.handle)
        {
            FUNC9(window);
        }

        FUNC0(_glfw.x11.display, window->x11.handle, _glfw.x11.context);
        FUNC6(_glfw.x11.display, window->x11.handle);
        FUNC2(_glfw.x11.display, window->x11.handle);
        window->x11.handle = (Window) 0;
    }

    if (window->x11.colormap)
    {
        FUNC4(_glfw.x11.display, window->x11.colormap);
        window->x11.colormap = (Colormap) 0;
    }

    FUNC3(_glfw.x11.display);
}