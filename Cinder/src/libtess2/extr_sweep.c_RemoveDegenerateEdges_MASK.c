#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct TYPE_10__* next; struct TYPE_10__* Sym; struct TYPE_10__* Lnext; int /*<<< orphan*/  Dst; int /*<<< orphan*/  Org; } ;
struct TYPE_11__ {TYPE_2__ eHead; } ;
struct TYPE_9__ {int /*<<< orphan*/  env; TYPE_3__* mesh; } ;
typedef  TYPE_1__ TESStesselator ;
typedef  TYPE_2__ TESShalfEdge ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC4( TESStesselator *tess )
/*
* Remove zero-length edges, and contours with fewer than 3 vertices.
*/
{
	TESShalfEdge *e, *eNext, *eLnext;
	TESShalfEdge *eHead = &tess->mesh->eHead;

	/*LINTED*/
	for( e = eHead->next; e != eHead; e = eNext ) {
		eNext = e->next;
		eLnext = e->Lnext;

		if( FUNC1( e->Org, e->Dst ) && e->Lnext->Lnext != e ) {
			/* Zero-length edge, contour has at least 3 edges */

			FUNC0( tess, eLnext, e );	/* deletes e->Org */
			if ( !FUNC3( tess->mesh, e ) ) FUNC2(tess->env,1); /* e is a self-loop */
			e = eLnext;
			eLnext = e->Lnext;
		}
		if( eLnext->Lnext == e ) {
			/* Degenerate contour (one or two edges) */

			if( eLnext != e ) {
				if( eLnext == eNext || eLnext == eNext->Sym ) { eNext = eNext->next; }
				if ( !FUNC3( tess->mesh, eLnext ) ) FUNC2(tess->env,1);
			}
			if( e == eNext || e == eNext->Sym ) { eNext = eNext->next; }
			if ( !FUNC3( tess->mesh, e ) ) FUNC2(tess->env,1);
		}
	}
}