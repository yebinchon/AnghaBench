#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_4__ {int count; int maxcount; int /*<<< orphan*/  overflowed; scalar_t__ lastLeaf; int /*<<< orphan*/  storeLeafs; void* list; int /*<<< orphan*/ * bounds; } ;
typedef  TYPE_1__ leafList_t ;
typedef  int /*<<< orphan*/  cbrush_t ;
struct TYPE_5__ {int /*<<< orphan*/  checkcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CM_StoreBrushes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 TYPE_2__ cm ; 
 int /*<<< orphan*/  qfalse ; 

int FUNC2( const vec3_t mins, const vec3_t maxs, cbrush_t **list, int listsize ) {
	leafList_t	ll;

	cm.checkcount++;

	FUNC1( mins, ll.bounds[0] );
	FUNC1( maxs, ll.bounds[1] );
	ll.count = 0;
	ll.maxcount = listsize;
	ll.list = (void *)list;
	ll.storeLeafs = CM_StoreBrushes;
	ll.lastLeaf = 0;
	ll.overflowed = qfalse;
	
	FUNC0( &ll, 0 );

	return ll.count;
}