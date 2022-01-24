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
typedef  int vec_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

void FUNC1 (FILE *f, int x, vec_t *m) {
	int		i;

	FUNC0 (f, "( ");
	for (i = 0 ; i < x ; i++) {
		if (m[i] == (int)m[i] ) {
			FUNC0 (f, "%i ", (int)m[i]);
		} else {
			FUNC0 (f, "%f ", m[i]);
		}
	}
	FUNC0 (f, ")");
}