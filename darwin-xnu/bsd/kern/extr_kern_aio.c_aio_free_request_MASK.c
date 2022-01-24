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
struct TYPE_4__ {scalar_t__ aio_map; int aio_refcount; int /*<<< orphan*/ * thread; } ;
typedef  TYPE_1__ aio_workq_entry ;

/* Variables and functions */
 scalar_t__ VM_MAP_NULL ; 
 int /*<<< orphan*/  aio_workq_zonep ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(aio_workq_entry *entryp)
{
	/* remove our reference to the user land map. */
	if ( VM_MAP_NULL != entryp->aio_map) {
		FUNC1(entryp->aio_map);
	}

	/* remove our reference to thread which enqueued the request */
	if ( NULL != entryp->thread ) {
		FUNC0( entryp->thread );
	}

	entryp->aio_refcount = -1; /* A bit of poisoning in case of bad refcounting. */
	
	FUNC2( aio_workq_zonep, entryp );

	return( 0 );
	
}