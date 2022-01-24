#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_9__ {int addedFrame; scalar_t__ frameSceneNum; scalar_t__ inPortal; scalar_t__ drawIntensity; struct TYPE_9__* next; } ;
typedef  TYPE_2__ flare_t ;
struct TYPE_8__ {int frameCount; scalar_t__ frameSceneNum; scalar_t__ isPortal; scalar_t__ viewportHeight; scalar_t__ viewportY; scalar_t__ viewportWidth; scalar_t__ viewportX; } ;
struct TYPE_11__ {TYPE_1__ viewParms; } ;
struct TYPE_10__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_CLIP_PLANE0 ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_5__ backEnd ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_2__* r_activeFlares ; 
 TYPE_3__* r_flares ; 
 void* r_inactiveFlares ; 

void FUNC8 (void) {
	flare_t		*f;
	flare_t		**prev;
	qboolean	draw;

	if ( !r_flares->integer ) {
		return;
	}

//	RB_AddDlightFlares();

	// perform z buffer readback on each flare in this view
	draw = qfalse;
	prev = &r_activeFlares;
	while ( ( f = *prev ) != NULL ) {
		// throw out any flares that weren't added last frame
		if ( f->addedFrame < backEnd.viewParms.frameCount - 1 ) {
			*prev = f->next;
			f->next = r_inactiveFlares;
			r_inactiveFlares = f;
			continue;
		}

		// don't draw any here that aren't from this scene / portal
		f->drawIntensity = 0;
		if ( f->frameSceneNum == backEnd.viewParms.frameSceneNum
			&& f->inPortal == backEnd.viewParms.isPortal ) {
			FUNC1( f );
			if ( f->drawIntensity ) {
				draw = qtrue;
			} else {
				// this flare has completely faded out, so remove it from the chain
				*prev = f->next;
				f->next = r_inactiveFlares;
				r_inactiveFlares = f;
				continue;
			}
		}

		prev = &f->next;
	}

	if ( !draw ) {
		return;		// none visible
	}

	if ( backEnd.viewParms.isPortal ) {
		FUNC2 (GL_CLIP_PLANE0);
	}

	FUNC7();
    FUNC3();
	FUNC4( GL_PROJECTION );
	FUNC7();
    FUNC3();
	FUNC5( backEnd.viewParms.viewportX, backEnd.viewParms.viewportX + backEnd.viewParms.viewportWidth,
			  backEnd.viewParms.viewportY, backEnd.viewParms.viewportY + backEnd.viewParms.viewportHeight,
			  -99999, 99999 );

	for ( f = r_activeFlares ; f ; f = f->next ) {
		if ( f->frameSceneNum == backEnd.viewParms.frameSceneNum
			&& f->inPortal == backEnd.viewParms.isPortal
			&& f->drawIntensity ) {
			FUNC0( f );
		}
	}

	FUNC6();
	FUNC4( GL_MODELVIEW );
	FUNC6();
}