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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  Defect ; 
 scalar_t__ N ; 
 scalar_t__ Q ; 
 scalar_t__ X ; 
 scalar_t__ Y ; 
 scalar_t__ Z ; 
 scalar_t__ Zero ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

FUNC2()
{
	if (Y != X) {
		if (N <= 0) {
			if (Z == Zero && Q <= Zero)
				FUNC1("WARNING:  computing\n");
			else FUNC0(Defect, "computing\n");
			FUNC1("\t(%.17e) ^ (%.17e)\n", Z, Q);
			FUNC1("\tyielded %.17e;\n", Y);
			FUNC1("\twhich compared unequal to correct %.17e ;\n",
				X);
			FUNC1("\t\tthey differ by %.17e .\n", Y - X);
			}
		N = N + 1; /* ... count discrepancies. */
		}
	}