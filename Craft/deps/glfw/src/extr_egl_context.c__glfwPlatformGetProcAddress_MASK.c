#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ client; } ;
struct TYPE_5__ {TYPE_1__ egl; } ;
typedef  TYPE_2__ _GLFWwindow ;
typedef  scalar_t__ GLFWglproc ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

GLFWglproc FUNC3(const char* procname)
{
    _GLFWwindow* window = FUNC0();

    if (window->egl.client)
    {
        GLFWglproc proc = (GLFWglproc) FUNC1(window->egl.client, procname);
        if (proc)
            return proc;
    }

    return FUNC2(procname);
}