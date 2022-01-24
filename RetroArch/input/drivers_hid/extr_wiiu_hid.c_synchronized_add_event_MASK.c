#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  TYPE_1__ wiiu_attach_event ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__ events ; 

__attribute__((used)) static void FUNC1(wiiu_attach_event *event)
{
   wiiu_attach_event *head = (wiiu_attach_event *)FUNC0((uint32_t *)&events.list, 0);

   event->next = head;
   head = event;

   FUNC0((uint32_t *)&events.list, (uint32_t)head);
}