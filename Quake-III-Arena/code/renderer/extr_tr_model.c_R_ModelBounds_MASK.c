#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int /*<<< orphan*/  qhandle_t ;
struct TYPE_7__ {TYPE_3__** md3; TYPE_1__* bmodel; } ;
typedef  TYPE_2__ model_t ;
struct TYPE_8__ {int ofsFrames; } ;
typedef  TYPE_3__ md3Header_t ;
struct TYPE_9__ {int /*<<< orphan*/ * bounds; } ;
typedef  TYPE_4__ md3Frame_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_6__ {int /*<<< orphan*/ * bounds; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3( qhandle_t handle, vec3_t mins, vec3_t maxs ) {
	model_t		*model;
	md3Header_t	*header;
	md3Frame_t	*frame;

	model = FUNC0( handle );

	if ( model->bmodel ) {
		FUNC2( model->bmodel->bounds[0], mins );
		FUNC2( model->bmodel->bounds[1], maxs );
		return;
	}

	if ( !model->md3[0] ) {
		FUNC1( mins );
		FUNC1( maxs );
		return;
	}

	header = model->md3[0];

	frame = (md3Frame_t *)( (byte *)header + header->ofsFrames );

	FUNC2( frame->bounds[0], mins );
	FUNC2( frame->bounds[1], maxs );
}