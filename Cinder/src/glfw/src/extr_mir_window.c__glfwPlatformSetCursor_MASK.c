#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  surface; } ;
struct TYPE_12__ {TYPE_2__ mir; } ;
typedef  TYPE_4__ _GLFWwindow ;
struct TYPE_9__ {scalar_t__ custom_cursor; scalar_t__ conf; } ;
struct TYPE_13__ {TYPE_1__ mir; } ;
typedef  TYPE_5__ _GLFWcursor ;
struct TYPE_11__ {scalar_t__ default_conf; } ;
struct TYPE_14__ {TYPE_3__ mir; } ;

/* Variables and functions */
 TYPE_8__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(_GLFWwindow* window, _GLFWcursor* cursor)
{
    if (cursor && cursor->mir.conf)
    {
        FUNC2(FUNC1(window->mir.surface, cursor->mir.conf));
        if (cursor->mir.custom_cursor)
        {
            FUNC0(cursor->mir.custom_cursor);
        }
    }
    else
    {
        FUNC2(FUNC1(window->mir.surface, _glfw.mir.default_conf));
    }
}