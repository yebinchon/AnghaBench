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
typedef  int /*<<< orphan*/  sfmt_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(sfmt_t * sfmt, void *array, int size, int rsize) {
	int i, j;
	char *t = (char *)FUNC0(rsize);
	char *ptr = (char *)array;
	char *ptri = ptr + (size - 1) * rsize;
	for (i = size - 1; i >= 0; i--) {
		j = FUNC2(sfmt) % (i + 1);
		if (i != j)
		{
			char *ptrj = ptr + j * rsize;
			FUNC1(t, ptri, rsize);
			FUNC1(ptri, ptrj, rsize);
			FUNC1(ptrj, t, rsize);
		}
		ptri -= rsize;
	}
}