#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  allocated; int /*<<< orphan*/  context; } ;
struct TYPE_4__ {TYPE_1__ posix_tls; } ;
typedef  int /*<<< orphan*/  GLFWbool ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

GLFWbool FUNC2(void)
{
    if (FUNC1(&_glfw.posix_tls.context, NULL) != 0)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "POSIX: Failed to create context TLS");
        return GLFW_FALSE;
    }

    _glfw.posix_tls.allocated = GLFW_TRUE;
    return GLFW_TRUE;
}