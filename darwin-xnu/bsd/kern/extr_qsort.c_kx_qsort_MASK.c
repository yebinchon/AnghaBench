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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t,size_t,int (*) (void const*,void const*)) ; 

void 
FUNC1 (void *array, size_t nm, size_t member_size, int (*cmpf)(const void *, const void *)) {
	FUNC0 (array, nm, member_size, cmpf);
}