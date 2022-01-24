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
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int) ; 

void FUNC2(char **buf, int num_pages, int vmpgsize) {
	int i, j;
	char val;

	for (j = 0; j < num_pages; j++) {
		buf[j] = (char*)FUNC0((size_t)vmpgsize * sizeof(char));
		val = 0;
		for (i = 0; i < vmpgsize; i += 16) {
			FUNC1(&buf[j][i], val, 16);
			if (i < 3400 * (vmpgsize / 4096)) {
				val++;
			}
		}
	}
}