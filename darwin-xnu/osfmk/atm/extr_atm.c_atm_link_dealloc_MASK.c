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
typedef  TYPE_1__* atm_link_object_t ;
struct TYPE_4__ {int /*<<< orphan*/  descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  atm_link_objects_zone ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(atm_link_object_t link_object)
{
	/* Drop the reference on atm task descriptor. */
	FUNC0(link_object->descriptor);
	FUNC1(atm_link_objects_zone, link_object);
}