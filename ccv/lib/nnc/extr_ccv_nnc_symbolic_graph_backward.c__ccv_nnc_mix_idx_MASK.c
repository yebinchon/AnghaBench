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
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline int FUNC1(const int* const md, const int ins, const int c)
{
	if (c <= 1)
		return 0;
	int ll = 0, uu = c - 1;
	int mm;
	do {
		mm = ll + ((uu - ll) >> 1);
		if (ins == md[mm])
			return mm;
		else if (ins < md[mm])
			uu = mm - 1;
		else if (ins > md[mm])
			ll = mm + 1;
	} while (ll <= uu);
	FUNC0(0 && "Shouldn't reach here");
	return -1;
}