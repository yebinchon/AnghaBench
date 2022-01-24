#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/  command; int /*<<< orphan*/  arg; } ;
struct TYPE_5__ {TYPE_2__* command_queue; } ;
typedef  TYPE_1__ AVFilterContext ;
typedef  TYPE_2__ AVFilterCommand ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(AVFilterContext *filter)
{
    AVFilterCommand *c= filter->command_queue;
    FUNC1(&c->arg);
    FUNC1(&c->command);
    filter->command_queue= c->next;
    FUNC0(c);
}