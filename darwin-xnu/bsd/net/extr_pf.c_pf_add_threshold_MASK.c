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
typedef  int u_int32_t ;
struct pf_threshold {int last; int seconds; int count; } ;

/* Variables and functions */
 scalar_t__ PF_THRESHOLD_MULT ; 
 int FUNC0 () ; 

__attribute__((used)) static void
FUNC1(struct pf_threshold *threshold)
{
	u_int32_t t = FUNC0(), diff = t - threshold->last;

	if (diff >= threshold->seconds)
		threshold->count = 0;
	else
		threshold->count -= threshold->count * diff /
		    threshold->seconds;
	threshold->count += PF_THRESHOLD_MULT;
	threshold->last = t;
}