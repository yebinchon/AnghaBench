#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {float x; float y; float z; float w; } ;
typedef  TYPE_1__ guQuaternion ;
typedef  float f32 ;
typedef  int /*<<< orphan*/  Mtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 float const FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 float FUNC2 (float const) ; 

void FUNC3(guQuaternion *a,Mtx m)
{
	const f32 diag = FUNC1(m,0,0) + FUNC1(m,1,1) + FUNC1(m,2,2) + 1;

	if(diag>0.0f) {
		const f32 scale = FUNC2(diag)*2.0f;

		a->x = (FUNC1(m,2,1) - FUNC1(m,1,2))/scale;
		a->y = (FUNC1(m,0,2) - FUNC1(m,2,0))/scale;
		a->z = (FUNC1(m,1,0) - FUNC1(m,0,1))/scale;
		a->w = 0.25f*scale;
	} else {
		if(FUNC1(m,0,0)>FUNC1(m,1,1) && FUNC1(m,0,0)>FUNC1(m,2,2)) {
			const f32 scale = FUNC2(1.0f + FUNC1(m,0,0) + FUNC1(m,1,1) + FUNC1(m,2,2))*2.0f;

			a->x = 0.25f*scale;
			a->y = (FUNC1(m,0,1) + FUNC1(m,1,0))/scale;
			a->z = (FUNC1(m,2,0) + FUNC1(m,0,2))/scale;
			a->w = (FUNC1(m,2,1) - FUNC1(m,1,2))/scale;
		} else if(FUNC1(m,1,1)>FUNC1(m,2,2)) {
			const f32 scale = FUNC2(1.0f + FUNC1(m,0,0) + FUNC1(m,1,1) + FUNC1(m,2,2))*2.0f;

			a->x = (FUNC1(m,0,1) + FUNC1(m,1,0))/scale;
			a->y = 0.25f*scale;
			a->z = (FUNC1(m,1,2) + FUNC1(m,2,1))/scale;
			a->w = (FUNC1(m,0,2) - FUNC1(m,2,0))/scale;
		} else {
			const f32 scale = FUNC2(1.0f + FUNC1(m,0,0) + FUNC1(m,1,1) + FUNC1(m,2,2))*2.0f;

			a->x = (FUNC1(m,0,2) + FUNC1(m,2,0))/scale;
			a->y = (FUNC1(m,1,2) + FUNC1(m,2,1))/scale;
			a->z = 0.25f*scale;
			a->w = (FUNC1(m,1,0) - FUNC1(m,0,1))/scale;
		}
	}
	FUNC0(a,a);
}