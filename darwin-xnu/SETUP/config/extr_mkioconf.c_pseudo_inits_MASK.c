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
struct device {scalar_t__ d_type; scalar_t__ d_init; int d_slave; struct device* d_next; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ PSEUDO_DEVICE ; 
 struct device* dtab ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC1(FILE *fp)
{
	struct device *dp;
	int count;

	FUNC0(fp, "\n");
	for (dp = dtab; dp != 0; dp = dp->d_next) {
		if (dp->d_type != PSEUDO_DEVICE || dp->d_init == 0)
			continue;
		FUNC0(fp, "extern int %s(int);\n", dp->d_init);
	}
	FUNC0(fp, "\nstruct pseudo_init pseudo_inits[] = {\n");
	for (dp = dtab; dp != 0; dp = dp->d_next) {
		if (dp->d_type != PSEUDO_DEVICE || dp->d_init == 0)
			continue;
		count = dp->d_slave;
		if (count <= 0)
			count = 1;
		FUNC0(fp, "\t{%d,\t%s},\n", count, dp->d_init);
	}
	FUNC0(fp, "\t{0,\t0},\n};\n");
}