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
 scalar_t__ FUNC0 (char const*,char const*) ; 

__attribute__((used)) static void FUNC1(const char **start, const char **end)
{
	while (start + 1 < end) {
		const char **left = start + 1;
		const char **right = end;
		const char *pivot = *start;
		const char *tmp;
		while (left < right) {
			if (FUNC0(*left, pivot) <= 0)
				left++;
			else {
				right--;
				tmp = *left;
				*left = *right;
				*right = tmp;
			}
		}
		left--;
		tmp = *left;
		*left = *start;
		*start = tmp;
		FUNC1(start, left);
		start = right;
	}
}