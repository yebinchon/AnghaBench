#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int fixUpperEdge; scalar_t__ windingNumber; int /*<<< orphan*/  sentinel; } ;
struct TYPE_6__ {int /*<<< orphan*/  dict; int /*<<< orphan*/  alloc; } ;
typedef  TYPE_1__ TESStesselator ;
typedef  TYPE_2__ ActiveRegion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5( TESStesselator *tess )
{
	ActiveRegion *reg;
	int fixedEdges = 0;

	while( (reg = (ActiveRegion *)FUNC3( FUNC4( tess->dict ))) != NULL ) {
		/*
		* At the end of all processing, the dictionary should contain
		* only the two sentinel edges, plus at most one "fixable" edge
		* created by ConnectRightVertex().
		*/
		if( ! reg->sentinel ) {
			FUNC1( reg->fixUpperEdge );
			FUNC1( ++fixedEdges == 1 );
		}
		FUNC1( reg->windingNumber == 0 );
		FUNC0( tess, reg );
		/*    tessMeshDelete( reg->eUp );*/
	}
	FUNC2( &tess->alloc, tess->dict );
}