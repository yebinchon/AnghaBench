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
struct TYPE_3__ {int /*<<< orphan*/  whiteShader; } ;
struct TYPE_4__ {float screenYScale; TYPE_1__ media; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,float*,float*,float*) ; 
 TYPE_2__ cgs ; 
 int /*<<< orphan*/  FUNC1 (float,float,float,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(float x, float y, float w, float h, float size) {
	FUNC0( &x, &y, &w, &h );
	size *= cgs.screenYScale;
	FUNC1( x, y, w, size, 0, 0, 0, 0, cgs.media.whiteShader );
	FUNC1( x, y + h - size, w, size, 0, 0, 0, 0, cgs.media.whiteShader );
}