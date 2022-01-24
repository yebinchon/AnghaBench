#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int time; } ;
struct TYPE_4__ {scalar_t__ isHyperspace; TYPE_1__ refdef; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 TYPE_2__ backEnd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float,float,float,int) ; 
 scalar_t__ qtrue ; 

__attribute__((used)) static void FUNC2( void ) {
	float		c;

	if ( !backEnd.isHyperspace ) {
		// do initialization shit
	}

	c = ( backEnd.refdef.time & 255 ) / 255.0f;
	FUNC1( c, c, c, 1 );
	FUNC0( GL_COLOR_BUFFER_BIT );

	backEnd.isHyperspace = qtrue;
}