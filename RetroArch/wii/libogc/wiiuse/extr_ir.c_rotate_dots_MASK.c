#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fdot_t {float x; float y; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 float FUNC1 (int /*<<< orphan*/ ) ; 
 float FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fdot_t* in, struct fdot_t *out, int count, float ang) {
	float s, c;
	int i;

	if (ang == 0) {
		for (i = 0; i < count; ++i) {
			out[i].x = in[i].x;
			out[i].y = in[i].y;
		}
		return;
	}

	s = FUNC2(FUNC0(ang));
	c = FUNC1(FUNC0(ang));

	/*
	 *	[ cos(theta)  -sin(theta) ][ ir->rx ]
	 *	[ sin(theta)  cos(theta)  ][ ir->ry ]
	 */

	for (i = 0; i < count; ++i) {
		out[i].x = (c * in[i].x) + (-s * in[i].y);
		out[i].y = (s * in[i].x) + (c * in[i].y);
	}
}