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
struct wl_region {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  surface; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_8__ {TYPE_2__ wl; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_6__ {int /*<<< orphan*/  compositor; } ;
struct TYPE_9__ {TYPE_1__ wl; } ;

/* Variables and functions */
 TYPE_5__ _glfw ; 
 struct wl_region* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl_region*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wl_region*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct wl_region*) ; 

__attribute__((used)) static void FUNC5(_GLFWwindow* window)
{
    struct wl_region* region;

    region = FUNC0(_glfw.wl.compositor);
    if (!region)
        return;

    FUNC1(region, 0, 0, window->wl.width, window->wl.height);
    FUNC4(window->wl.surface, region);
    FUNC3(window->wl.surface);
    FUNC2(region);
}