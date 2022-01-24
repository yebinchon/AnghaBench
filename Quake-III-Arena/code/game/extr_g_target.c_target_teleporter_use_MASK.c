#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  angles; int /*<<< orphan*/  origin; } ;
struct TYPE_9__ {TYPE_1__ s; int /*<<< orphan*/  target; int /*<<< orphan*/  client; } ;
typedef  TYPE_2__ gentity_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3( gentity_t *self, gentity_t *other, gentity_t *activator ) {
	gentity_t	*dest;

	if (!activator->client)
		return;
	dest = 	FUNC0( self->target );
	if (!dest) {
		FUNC1 ("Couldn't find teleporter destination\n");
		return;
	}

	FUNC2( activator, dest->s.origin, dest->s.angles );
}