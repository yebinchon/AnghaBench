#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qhandle_t ;
struct TYPE_7__ {float** axis; float* origin; } ;
typedef  TYPE_1__ orientation_t ;
struct TYPE_8__ {int /*<<< orphan*/ * md3; } ;
typedef  TYPE_2__ model_t ;
struct TYPE_9__ {float* origin; float** axis; } ;
typedef  TYPE_3__ md3Tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float**) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (float*) ; 
 int /*<<< orphan*/  FUNC4 (float*) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC5( orientation_t *tag, qhandle_t handle, int startFrame, int endFrame, 
					 float frac, const char *tagName ) {
	md3Tag_t	*start, *end;
	int		i;
	float		frontLerp, backLerp;
	model_t		*model;

	model = FUNC1( handle );
	if ( !model->md3[0] ) {
		FUNC0( tag->axis );
		FUNC3( tag->origin );
		return qfalse;
	}

	start = FUNC2( model->md3[0], startFrame, tagName );
	end = FUNC2( model->md3[0], endFrame, tagName );
	if ( !start || !end ) {
		FUNC0( tag->axis );
		FUNC3( tag->origin );
		return qfalse;
	}

	frontLerp = frac;
	backLerp = 1.0f - frac;

	for ( i = 0 ; i < 3 ; i++ ) {
		tag->origin[i] = start->origin[i] * backLerp +  end->origin[i] * frontLerp;
		tag->axis[0][i] = start->axis[0][i] * backLerp +  end->axis[0][i] * frontLerp;
		tag->axis[1][i] = start->axis[1][i] * backLerp +  end->axis[1][i] * frontLerp;
		tag->axis[2][i] = start->axis[2][i] * backLerp +  end->axis[2][i] * frontLerp;
	}
	FUNC4( tag->axis[0] );
	FUNC4( tag->axis[1] );
	FUNC4( tag->axis[2] );
	return qtrue;
}