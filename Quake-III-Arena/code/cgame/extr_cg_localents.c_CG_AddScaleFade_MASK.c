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
struct TYPE_10__ {float endTime; float lifeRate; int* color; double radius; TYPE_2__ refEntity; } ;
typedef  TYPE_3__ localEntity_t ;
struct TYPE_8__ {int /*<<< orphan*/  vieworg; } ;
struct TYPE_11__ {float time; TYPE_1__ refdef; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 float FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ cg ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4( localEntity_t *le ) {
	refEntity_t	*re;
	float		c;
	vec3_t		delta;
	float		len;

	re = &le->refEntity;

	// fade / grow time
	c = ( le->endTime - cg.time ) * le->lifeRate;

	re->shaderRGBA[3] = 0xff * c * le->color[3];
	re->radius = le->radius * ( 1.0 - c ) + 8;

	// if the view would be "inside" the sprite, kill the sprite
	// so it doesn't add too much overdraw
	FUNC2( re->origin, cg.refdef.vieworg, delta );
	len = FUNC1( delta );
	if ( len < le->radius ) {
		FUNC0( le );
		return;
	}

	FUNC3( re );
}