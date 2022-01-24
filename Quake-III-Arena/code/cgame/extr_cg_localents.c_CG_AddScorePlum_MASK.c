#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_14__ {int* shaderRGBA; int radius; int* origin; int /*<<< orphan*/  customShader; } ;
typedef  TYPE_4__ refEntity_t ;
struct TYPE_11__ {int /*<<< orphan*/  trBase; } ;
struct TYPE_15__ {float endTime; float lifeRate; int radius; TYPE_1__ pos; TYPE_4__ refEntity; } ;
typedef  TYPE_5__ localEntity_t ;
struct TYPE_12__ {int* vieworg; } ;
struct TYPE_17__ {float time; TYPE_2__ refdef; } ;
struct TYPE_13__ {int /*<<< orphan*/ * numberShaders; } ;
struct TYPE_16__ {TYPE_3__ media; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*) ; 
 float M_PI ; 
 int NUMBER_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 float FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,float,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int*) ; 
 TYPE_8__ cg ; 
 TYPE_7__ cgs ; 
 int qfalse ; 
 int qtrue ; 
 int FUNC7 (float) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 

void FUNC9( localEntity_t *le ) {
	refEntity_t	*re;
	vec3_t		origin, delta, dir, vec, up = {0, 0, 1};
	float		c, len;
	int			i, score, digits[10], numdigits, negative;

	re = &le->refEntity;

	c = ( le->endTime - cg.time ) * le->lifeRate;

	score = le->radius;
	if (score < 0) {
		re->shaderRGBA[0] = 0xff;
		re->shaderRGBA[1] = 0x11;
		re->shaderRGBA[2] = 0x11;
	}
	else {
		re->shaderRGBA[0] = 0xff;
		re->shaderRGBA[1] = 0xff;
		re->shaderRGBA[2] = 0xff;
		if (score >= 50) {
			re->shaderRGBA[1] = 0;
		} else if (score >= 20) {
			re->shaderRGBA[0] = re->shaderRGBA[1] = 0;
		} else if (score >= 10) {
			re->shaderRGBA[2] = 0;
		} else if (score >= 2) {
			re->shaderRGBA[0] = re->shaderRGBA[2] = 0;
		}

	}
	if (c < 0.25)
		re->shaderRGBA[3] = 0xff * 4 * c;
	else
		re->shaderRGBA[3] = 0xff;

	re->radius = NUMBER_SIZE / 2;

	FUNC2(le->pos.trBase, origin);
	origin[2] += 110 - c * 100;

	FUNC6(cg.refdef.vieworg, origin, dir);
	FUNC1(dir, up, vec);
	FUNC5(vec);

	FUNC4(origin, -10 + 20 * FUNC7(c * 2 * M_PI), vec, origin);

	// if the view would be "inside" the sprite, kill the sprite
	// so it doesn't add too much overdraw
	FUNC6( origin, cg.refdef.vieworg, delta );
	len = FUNC3( delta );
	if ( len < 20 ) {
		FUNC0( le );
		return;
	}

	negative = qfalse;
	if (score < 0) {
		negative = qtrue;
		score = -score;
	}

	for (numdigits = 0; !(numdigits && !score); numdigits++) {
		digits[numdigits] = score % 10;
		score = score / 10;
	}

	if (negative) {
		digits[numdigits] = 10;
		numdigits++;
	}

	for (i = 0; i < numdigits; i++) {
		FUNC4(origin, (float) (((float) numdigits / 2) - i) * NUMBER_SIZE, vec, re->origin);
		re->customShader = cgs.media.numberShaders[digits[numdigits-1-i]];
		FUNC8( re );
	}
}