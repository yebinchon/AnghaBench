#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  (* spawn ) (TYPE_3__*) ;scalar_t__ name; } ;
typedef  TYPE_1__ spawn_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_11__ {scalar_t__ classname; } ;
typedef  TYPE_2__ gitem_t ;
struct TYPE_12__ {int /*<<< orphan*/  classname; } ;
typedef  TYPE_3__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* bg_itemlist ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_1__* spawns ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

qboolean FUNC4( gentity_t *ent ) {
	spawn_t	*s;
	gitem_t	*item;

	if ( !ent->classname ) {
		FUNC0 ("G_CallSpawn: NULL classname\n");
		return qfalse;
	}

	// check item spawn functions
	for ( item=bg_itemlist+1 ; item->classname ; item++ ) {
		if ( !FUNC2(item->classname, ent->classname) ) {
			FUNC1( ent, item );
			return qtrue;
		}
	}

	// check normal spawn functions
	for ( s=spawns ; s->name ; s++ ) {
		if ( !FUNC2(s->name, ent->classname) ) {
			// found it
			s->spawn(ent);
			return qtrue;
		}
	}
	FUNC0 ("%s doesn't have a spawn function\n", ent->classname);
	return qfalse;
}