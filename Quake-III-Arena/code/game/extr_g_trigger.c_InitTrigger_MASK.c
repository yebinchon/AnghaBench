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
struct TYPE_7__ {int /*<<< orphan*/  svFlags; int /*<<< orphan*/  contents; } ;
struct TYPE_6__ {int /*<<< orphan*/  angles; } ;
struct TYPE_8__ {TYPE_2__ r; int /*<<< orphan*/  model; int /*<<< orphan*/  movedir; TYPE_1__ s; } ;
typedef  TYPE_3__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONTENTS_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVF_NOCLIENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vec3_origin ; 

void FUNC3( gentity_t *self ) {
	if (!FUNC1 (self->s.angles, vec3_origin))
		FUNC0 (self->s.angles, self->movedir);

	FUNC2( self, self->model );
	self->r.contents = CONTENTS_TRIGGER;		// replaces the -1 from trap_SetBrushModel
	self->r.svFlags = SVF_NOCLIENT;
}