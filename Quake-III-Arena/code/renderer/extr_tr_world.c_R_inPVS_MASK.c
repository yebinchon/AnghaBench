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
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_3__ {int cluster; } ;
typedef  TYPE_1__ mnode_t ;
typedef  int byte ;

/* Variables and functions */
 int* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC2( const vec3_t p1, const vec3_t p2 ) {
	mnode_t *leaf;
	byte	*vis;

	leaf = FUNC1( p1 );
	vis = FUNC0( leaf->cluster );
	leaf = FUNC1( p2 );

	if ( !(vis[leaf->cluster>>3] & (1<<(leaf->cluster&7))) ) {
		return qfalse;
	}
	return qtrue;
}