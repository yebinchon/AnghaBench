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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  texnum; } ;
struct TYPE_5__ {TYPE_3__** currenttextures; } ;
struct TYPE_4__ {int numImages; TYPE_3__** images; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 TYPE_2__ glState ; 
 scalar_t__ qglActiveTextureARB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 TYPE_1__ tr ; 

void FUNC4( void ) {
	int		i;

	for ( i=0; i<tr.numImages ; i++ ) {
		FUNC3( 1, &tr.images[i]->texnum );
	}
	FUNC0( tr.images, 0, sizeof( tr.images ) );

	tr.numImages = 0;

	FUNC0( glState.currenttextures, 0, sizeof( glState.currenttextures ) );
	if ( &qglBindTexture ) {
		if ( qglActiveTextureARB ) {
			FUNC1( 1 );
			FUNC2( GL_TEXTURE_2D, 0 );
			FUNC1( 0 );
			FUNC2( GL_TEXTURE_2D, 0 );
		} else {
			FUNC2( GL_TEXTURE_2D, 0 );
		}
	}
}