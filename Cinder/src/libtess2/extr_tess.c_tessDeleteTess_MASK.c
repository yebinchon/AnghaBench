#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TESSalloc {int /*<<< orphan*/  userData; int /*<<< orphan*/  (* memfree ) (int /*<<< orphan*/ ,TYPE_1__*) ;} ;
struct TYPE_6__ {struct TYPE_6__* elements; struct TYPE_6__* vertices; int /*<<< orphan*/ * mesh; int /*<<< orphan*/  regionPool; struct TESSalloc alloc; } ;
typedef  TYPE_1__ TESStesselator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct TESSalloc*,int /*<<< orphan*/ *) ; 

void FUNC5( TESStesselator *tess )
{
	
	struct TESSalloc alloc = tess->alloc;
	
	FUNC0( tess->regionPool );

	if( tess->mesh != NULL ) {
		FUNC4( &alloc, tess->mesh );
		tess->mesh = NULL;
	}
	if (tess->vertices != NULL) {
		alloc.memfree( alloc.userData, tess->vertices );
		tess->vertices = 0;
	}
	if (tess->elements != NULL) {
		alloc.memfree( alloc.userData, tess->elements );
		tess->elements = 0;
	}

	alloc.memfree( alloc.userData, tess );
}