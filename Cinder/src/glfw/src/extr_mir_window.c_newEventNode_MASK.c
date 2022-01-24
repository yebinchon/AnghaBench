#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  _GLFWwindow ;
struct TYPE_4__ {int /*<<< orphan*/ * window; int /*<<< orphan*/  event; } ;
typedef  int /*<<< orphan*/  MirEvent ;
typedef  TYPE_1__ EventNode ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static EventNode* FUNC2(const MirEvent* event, _GLFWwindow* context)
{
    EventNode* new_node = FUNC0(1, sizeof(EventNode));
    new_node->event     = FUNC1(event);
    new_node->window    = context;

    return new_node;
}