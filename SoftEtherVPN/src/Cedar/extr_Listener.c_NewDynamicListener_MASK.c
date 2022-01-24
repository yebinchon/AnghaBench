#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* UINT ;
struct TYPE_8__ {int /*<<< orphan*/  ref; } ;
struct TYPE_7__ {int* EnablePtr; void* Port; void* Protocol; int /*<<< orphan*/ * Listener; int /*<<< orphan*/  Lock; TYPE_2__* Cedar; } ;
typedef  TYPE_1__ DYNAMIC_LISTENER ;
typedef  TYPE_2__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int) ; 

DYNAMIC_LISTENER *FUNC4(CEDAR *c, bool *enable_ptr, UINT protocol, UINT port)
{
	DYNAMIC_LISTENER *d;
	// Validate arguments
	if (c == NULL || enable_ptr == NULL)
	{
		return NULL;
	}

	d = FUNC3(sizeof(DYNAMIC_LISTENER));

	d->Cedar = c;
	FUNC0(d->Cedar->ref);

	d->Lock = FUNC2();

	d->EnablePtr = enable_ptr;

	d->Listener = NULL;

	d->Protocol = protocol;
	d->Port = port;

	FUNC1(d);

	return d;
}