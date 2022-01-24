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
typedef  int uint32_t ;
typedef  scalar_t__ int8_t ;

/* Variables and functions */
 scalar_t__ BUTTONS_NUM ; 
 int FUNC0 (scalar_t__) ; 

uint32_t FUNC1(void) {
	int8_t i;
	uint32_t result = 0;
	for(i = BUTTONS_NUM-1; i >= 0; i--)
		result = (result << 1) | FUNC0(i);
	return result;
}