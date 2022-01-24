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
typedef  int /*<<< orphan*/  _GLFWwindow ;
struct TYPE_5__ {int /*<<< orphan*/  event_mutex; int /*<<< orphan*/  event_cond; TYPE_1__* event_queue; } ;
struct TYPE_6__ {TYPE_2__ mir; } ;
struct TYPE_4__ {int /*<<< orphan*/  head; } ;
typedef  int /*<<< orphan*/  MirEvent ;
typedef  int /*<<< orphan*/  EventNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__ _glfw ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(const MirEvent* event, _GLFWwindow* context)
{
    FUNC3(&_glfw.mir.event_mutex);

    EventNode* new_node = FUNC1(event, context);
    FUNC0(&_glfw.mir.event_queue->head, new_node, entries);

    FUNC2(&_glfw.mir.event_cond);

    FUNC4(&_glfw.mir.event_mutex);
}