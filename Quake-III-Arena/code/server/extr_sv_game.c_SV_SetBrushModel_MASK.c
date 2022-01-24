#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_7__ {int contents; int /*<<< orphan*/  bmodel; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;
struct TYPE_6__ {int /*<<< orphan*/  modelindex; } ;
struct TYPE_8__ {TYPE_2__ r; TYPE_1__ s; } ;
typedef  TYPE_3__ sharedEntity_t ;
typedef  int /*<<< orphan*/  clipHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC6( sharedEntity_t *ent, const char *name ) {
	clipHandle_t	h;
	vec3_t			mins, maxs;

	if (!name) {
		FUNC2( ERR_DROP, "SV_SetBrushModel: NULL" );
	}

	if (name[0] != '*') {
		FUNC2( ERR_DROP, "SV_SetBrushModel: %s isn't a brush model", name );
	}


	ent->s.modelindex = FUNC5( name + 1 );

	h = FUNC0( ent->s.modelindex );
	FUNC1( h, mins, maxs );
	FUNC4 (mins, ent->r.mins);
	FUNC4 (maxs, ent->r.maxs);
	ent->r.bmodel = qtrue;

	ent->r.contents = -1;		// we don't know exactly what is in the brushes

	FUNC3( ent );		// FIXME: remove
}