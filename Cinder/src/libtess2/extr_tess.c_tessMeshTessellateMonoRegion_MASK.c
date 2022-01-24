#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* anEdge; } ;
struct TYPE_9__ {struct TYPE_9__* Sym; struct TYPE_9__* Lnext; struct TYPE_9__* Lprev; int /*<<< orphan*/  Org; int /*<<< orphan*/  Dst; } ;
typedef  int /*<<< orphan*/  TESSmesh ;
typedef  TYPE_1__ TESShalfEdge ;
typedef  TYPE_2__ TESSface ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 

int FUNC6( TESSmesh *mesh, TESSface *face )
{
	TESShalfEdge *up, *lo;

	/* All edges are oriented CCW around the boundary of the region.
	* First, find the half-edge whose origin vertex is rightmost.
	* Since the sweep goes from left to right, face->anEdge should
	* be close to the edge we want.
	*/
	up = face->anEdge;
	FUNC4( up->Lnext != up && up->Lnext->Lnext != up );

	for( ; FUNC3( up->Dst, up->Org ); up = up->Lprev )
		;
	for( ; FUNC3( up->Org, up->Dst ); up = up->Lnext )
		;
	lo = up->Lprev;

	while( up->Lnext != lo ) {
		if( FUNC3( up->Dst, lo->Org )) {
			/* up->Dst is on the left.  It is safe to form triangles from lo->Org.
			* The EdgeGoesLeft test guarantees progress even when some triangles
			* are CW, given that the upper and lower chains are truly monotone.
			*/
			while( lo->Lnext != up && (FUNC0( lo->Lnext )
				|| FUNC2( lo->Org, lo->Dst, lo->Lnext->Dst ) <= 0 )) {
					TESShalfEdge *tempHalfEdge= FUNC5( mesh, lo->Lnext, lo );
					if (tempHalfEdge == NULL) return 0;
					lo = tempHalfEdge->Sym;
			}
			lo = lo->Lprev;
		} else {
			/* lo->Org is on the left.  We can make CCW triangles from up->Dst. */
			while( lo->Lnext != up && (FUNC1( up->Lprev )
				|| FUNC2( up->Dst, up->Org, up->Lprev->Org ) >= 0 )) {
					TESShalfEdge *tempHalfEdge= FUNC5( mesh, up, up->Lprev );
					if (tempHalfEdge == NULL) return 0;
					up = tempHalfEdge->Sym;
			}
			up = up->Lnext;
		}
	}

	/* Now lo->Org == up->Dst == the leftmost vertex.  The remaining region
	* can be tessellated in a fan from this leftmost vertex.
	*/
	FUNC4( lo->Lnext != up );
	while( lo->Lnext->Lnext != up ) {
		TESShalfEdge *tempHalfEdge= FUNC5( mesh, lo->Lnext, lo );
		if (tempHalfEdge == NULL) return 0;
		lo = tempHalfEdge->Sym;
	}

	return 1;
}