#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_5__ {scalar_t__ health; } ;
typedef  TYPE_1__ gentity_t ;
struct TYPE_6__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 TYPE_3__ g_cheats ; 
 int g_entities ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

qboolean	FUNC2( gentity_t *ent ) {
	if ( !g_cheats.integer ) {
		FUNC0( ent-g_entities, FUNC1("print \"Cheats are not enabled on this server.\n\""));
		return qfalse;
	}
	if ( ent->health <= 0 ) {
		FUNC0( ent-g_entities, FUNC1("print \"You must be alive to use this command.\n\""));
		return qfalse;
	}
	return qtrue;
}