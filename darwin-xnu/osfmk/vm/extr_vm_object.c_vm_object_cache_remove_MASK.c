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
typedef  TYPE_2__* vm_object_t ;
struct TYPE_5__ {scalar_t__ prev; scalar_t__ next; } ;
struct TYPE_6__ {TYPE_1__ cached_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(
	vm_object_t	object)
{
	FUNC0();

	if (object->cached_list.next &&
	    object->cached_list.prev)
		FUNC1(object);

	FUNC2();
}