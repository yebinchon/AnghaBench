#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  _GLFWfbconfig ;
typedef  int /*<<< orphan*/  _GLFWctxconfig ;
struct TYPE_7__ {int depth; int /*<<< orphan*/ * visual; } ;
typedef  TYPE_2__ XVisualInfo ;
typedef  int /*<<< orphan*/  Visual ;
struct TYPE_6__ {int /*<<< orphan*/  display; } ;
struct TYPE_8__ {TYPE_1__ x11; } ;
typedef  int /*<<< orphan*/  GLXFBConfig ;
typedef  int /*<<< orphan*/  GLFWbool ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_FORMAT_UNAVAILABLE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_4__ _glfw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

GLFWbool FUNC4(const _GLFWctxconfig* ctxconfig,
                              const _GLFWfbconfig* fbconfig,
                              Visual** visual, int* depth)
{
    GLXFBConfig native;
    XVisualInfo* result;

    if (!FUNC2(fbconfig, &native))
    {
        FUNC1(GLFW_FORMAT_UNAVAILABLE,
                        "GLX: Failed to find a suitable GLXFBConfig");
        return GLFW_FALSE;
    }

    result = FUNC3(_glfw.x11.display, native);
    if (!result)
    {
        FUNC1(GLFW_PLATFORM_ERROR,
                        "GLX: Failed to retrieve Visual for GLXFBConfig");
        return GLFW_FALSE;
    }

    *visual = result->visual;
    *depth = result->depth;

    FUNC0(result);
    return GLFW_TRUE;
}