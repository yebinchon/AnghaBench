#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int pass; scalar_t__ features; } ;
typedef  TYPE_1__ ccv_icf_decision_tree_t ;

/* Variables and functions */
 float FUNC0 (scalar_t__,float*,int,int,int,int) ; 

__attribute__((used)) static inline int FUNC1(ccv_icf_decision_tree_t* weak_classifier, float* ptr, int cols, int ch, int x, int y)
{
	float c = FUNC0(weak_classifier->features, ptr, cols, ch, x, y);
	if (c > 0)
	{
		if (!(weak_classifier->pass & 0x1))
			return 1;
		return FUNC0(weak_classifier->features + 2, ptr, cols, ch, x, y) > 0;
	} else {
		if (!(weak_classifier->pass & 0x2))
			return 0;
		return FUNC0(weak_classifier->features + 1, ptr, cols, ch, x, y) > 0;
	}
}