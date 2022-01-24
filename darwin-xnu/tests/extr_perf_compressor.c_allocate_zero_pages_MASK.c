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
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 

void FUNC2(char **buf, int num_pages, int vmpgsize) {
	int i;

	for (i = 0; i < num_pages; i++) {
		buf[i] = (char*)FUNC0((size_t)vmpgsize * sizeof(char));
		FUNC1(buf[i], 0, vmpgsize);
	}
}