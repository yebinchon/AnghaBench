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
struct TYPE_3__ {int /*<<< orphan*/  monitor; } ;
struct TYPE_4__ {TYPE_1__ callbacks; } ;
typedef  int /*<<< orphan*/  GLFWmonitorfun ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ _glfw ; 

GLFWmonitorfun FUNC2(GLFWmonitorfun cbfun)
{
    FUNC0(NULL);
    FUNC1(_glfw.callbacks.monitor, cbfun);
    return cbfun;
}