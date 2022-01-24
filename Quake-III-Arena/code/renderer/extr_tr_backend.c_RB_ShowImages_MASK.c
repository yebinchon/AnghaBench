#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {float uploadWidth; float uploadHeight; } ;
typedef  TYPE_1__ image_t ;
struct TYPE_13__ {int /*<<< orphan*/  projection2D; } ;
struct TYPE_12__ {int vidWidth; int vidHeight; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {int (* Milliseconds ) () ;int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,int) ;} ;
struct TYPE_9__ {int numImages; TYPE_1__** images; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_QUADS ; 
 int /*<<< orphan*/  PRINT_ALL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_6__ backEnd ; 
 TYPE_5__ glConfig ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (float,float) ; 
 TYPE_4__* r_showImages ; 
 TYPE_3__ ri ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__ tr ; 

void FUNC11( void ) {
	int		i;
	image_t	*image;
	float	x, y, w, h;
	int		start, end;

	if ( !backEnd.projection2D ) {
		FUNC1();
	}

	FUNC3( GL_COLOR_BUFFER_BIT );

	FUNC5();

	start = ri.Milliseconds();

	for ( i=0 ; i<tr.numImages ; i++ ) {
		image = tr.images[i];

		w = glConfig.vidWidth / 20;
		h = glConfig.vidHeight / 15;
		x = i % 20 * w;
		y = i / 20 * h;

		// show in proportional size in mode 2
		if ( r_showImages->integer == 2 ) {
			w *= image->uploadWidth / 512.0f;
			h *= image->uploadHeight / 512.0f;
		}

		FUNC0( image );
		FUNC2 (GL_QUADS);
		FUNC6( 0, 0 );
		FUNC7( x, y );
		FUNC6( 1, 0 );
		FUNC7( x + w, y );
		FUNC6( 1, 1 );
		FUNC7( x + w, y + h );
		FUNC6( 0, 1 );
		FUNC7( x, y + h );
		FUNC4();
	}

	FUNC5();

	end = ri.Milliseconds();
	ri.Printf( PRINT_ALL, "%i msec to draw all images\n", end - start );

}