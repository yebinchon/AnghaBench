#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  bounds; } ;
typedef  TYPE_1__ srfTriangles_t ;
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int CULL_OUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static qboolean	FUNC1( srfTriangles_t *cv ) {
	int 	boxCull;

	boxCull = FUNC0( cv->bounds );

	if ( boxCull == CULL_OUT ) {
		return qtrue;
	}
	return qfalse;
}