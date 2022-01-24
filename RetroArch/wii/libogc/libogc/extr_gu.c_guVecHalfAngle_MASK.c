#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ guVector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 float FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(guVector *a,guVector *b,guVector *half)
{
	guVector tmp1,tmp2,tmp3;

	tmp1.x = -a->x;
	tmp1.y = -a->y;
	tmp1.z = -a->z;

	tmp2.x = -b->x;
	tmp2.y = -b->y;
	tmp2.z = -b->z;

	FUNC2(&tmp1);
	FUNC2(&tmp2);

	FUNC0(&tmp1,&tmp2,&tmp3);
	if(FUNC1(&tmp3,&tmp3)>0.0f) FUNC2(&tmp3);

	*half = tmp3;
}