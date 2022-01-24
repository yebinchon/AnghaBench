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
struct TYPE_3__ {int areanum2; int /*<<< orphan*/  areanum; } ;
typedef  TYPE_1__ svEntity_t ;
typedef  int /*<<< orphan*/  sharedEntity_t ;
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2( sharedEntity_t *ent, qboolean open ) {
	svEntity_t	*svEnt;

	svEnt = FUNC1( ent );
	if ( svEnt->areanum2 == -1 ) {
		return;
	}
	FUNC0( svEnt->areanum, svEnt->areanum2, open );
}