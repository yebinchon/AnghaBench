#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  surface; } ;
struct TYPE_8__ {TYPE_2__ mir; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_6__ {int /*<<< orphan*/  connection; } ;
struct TYPE_9__ {TYPE_1__ mir; } ;
typedef  int /*<<< orphan*/  MirSurfaceSpec ;

/* Variables and functions */
 TYPE_5__ _glfw ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mir_surface_state_restored ; 

void FUNC4(_GLFWwindow* window)
{
    MirSurfaceSpec* spec;

    spec = FUNC0(_glfw.mir.connection);
    FUNC3(spec, mir_surface_state_restored);

    FUNC1(window->mir.surface, spec);
    FUNC2(spec);
}