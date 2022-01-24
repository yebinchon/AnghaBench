#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  instance; } ;
struct TYPE_5__ {TYPE_1__ opengl32; } ;
struct TYPE_6__ {TYPE_2__ wgl; } ;
typedef  scalar_t__ const GLFWglproc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_3__ _glfw ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

GLFWglproc FUNC2(const char* procname)
{
    const GLFWglproc proc = (GLFWglproc) FUNC1(procname);
    if (proc)
        return proc;

    return (GLFWglproc) FUNC0(_glfw.wgl.opengl32.instance, procname);
}