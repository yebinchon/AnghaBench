#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ monitor; } ;
typedef  TYPE_1__ _GLFWwndconfig ;
typedef  int /*<<< orphan*/  _GLFWwindow ;
typedef  int /*<<< orphan*/  _GLFWfbconfig ;
typedef  int /*<<< orphan*/  _GLFWctxconfig ;

/* Variables and functions */
 int GL_FALSE ; 
 int GL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(_GLFWwindow* window,
                              const _GLFWwndconfig* wndconfig,
                              const _GLFWctxconfig* ctxconfig,
                              const _GLFWfbconfig* fbconfig)
{
    if (!FUNC0(window, ctxconfig, fbconfig))
        return GL_FALSE;

    if (!FUNC2(window, wndconfig))
        return GL_FALSE;

    if (wndconfig->monitor)
    {
        FUNC1(window);
        FUNC3(window);
    }

    return GL_TRUE;
}