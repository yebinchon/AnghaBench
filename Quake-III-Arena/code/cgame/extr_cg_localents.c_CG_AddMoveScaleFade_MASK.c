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
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_9__ {int* shaderRGBA; double radius; int /*<<< orphan*/  origin; } ;
typedef  TYPE_2__ refEntity_t ;
struct TYPE_10__ {scalar_t__ fadeInTime; scalar_t__ startTime; float endTime; float lifeRate; int* color; int leFlags; double radius; int /*<<< orphan*/  pos; TYPE_2__ refEntity; } ;
typedef  TYPE_3__ localEntity_t ;
struct TYPE_8__ {int /*<<< orphan*/  vieworg; } ;
struct TYPE_11__ {scalar_t__ time; TYPE_1__ refdef; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int LEF_PUFF_DONT_SCALE ; 
 float FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ cg ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5( localEntity_t *le ) {
	refEntity_t	*re;
	float		c;
	vec3_t		delta;
	float		len;

	re = &le->refEntity;

	if ( le->fadeInTime > le->startTime && cg.time < le->fadeInTime ) {
		// fade / grow time
		c = 1.0 - (float) ( le->fadeInTime - cg.time ) / ( le->fadeInTime - le->startTime );
	}
	else {
		// fade / grow time
		c = ( le->endTime - cg.time ) * le->lifeRate;
	}

	re->shaderRGBA[3] = 0xff * c * le->color[3];

	if ( !( le->leFlags & LEF_PUFF_DONT_SCALE ) ) {
		re->radius = le->radius * ( 1.0 - c ) + 8;
	}

	FUNC0( &le->pos, cg.time, re->origin );

	// if the view would be "inside" the sprite, kill the sprite
	// so it doesn't add too much overdraw
	FUNC3( re->origin, cg.refdef.vieworg, delta );
	len = FUNC2( delta );
	if ( len < le->radius ) {
		FUNC1( le );
		return;
	}

	FUNC4( re );
}