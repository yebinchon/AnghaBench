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
struct TYPE_4__ {scalar_t__ shell_surface; scalar_t__ title; } ;
struct TYPE_5__ {TYPE_1__ wl; } ;
typedef  TYPE_2__ _GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*) ; 

void FUNC3(_GLFWwindow* window, const char* title)
{
    if (window->wl.title)
        FUNC0(window->wl.title);
    window->wl.title = FUNC1(title);
    if (window->wl.shell_surface)
        FUNC2(window->wl.shell_surface, title);
}