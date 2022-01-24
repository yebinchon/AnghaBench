#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,TYPE_1__,TYPE_1__) ; 
 float FUNC2 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,int,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__,TYPE_1__,TYPE_1__) ; 

void FUNC8(vec3_t start, vec3_t end, int linecolor, int arrowcolor)
{
	vec3_t dir, cross, p1, p2, up = {0, 0, 1};
	float dot;

	FUNC7(end, start, dir);
	FUNC5(dir);
	dot = FUNC2(dir, up);
	if (dot > 0.99 || dot < -0.99) FUNC6(cross, 1, 0, 0);
	else FUNC1(dir, up, cross);

	FUNC4(end, -6, dir, p1);
	FUNC3(p1, p2);
	FUNC4(p1, 6, cross, p1);
	FUNC4(p2, -6, cross, p2);

	FUNC0(start, end, linecolor);
	FUNC0(p1, end, arrowcolor);
	FUNC0(p2, end, arrowcolor);
}