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
#define  A_COND_AL 132 
#define  A_COND_EQ 131 
#define  A_COND_MI 130 
#define  A_COND_NE 129 
#define  A_COND_PL 128 
 int /*<<< orphan*/  EL_ANOMALY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(int cond)
{
	switch (cond) {
		case A_COND_AL: FUNC0(EL_ANOMALY, "neg for AL?\n"); FUNC1(1);
		case A_COND_EQ: return A_COND_NE;
		case A_COND_NE: return A_COND_EQ;
		case A_COND_MI: return A_COND_PL;
		case A_COND_PL: return A_COND_MI;
		default:        FUNC0(EL_ANOMALY, "bad cond for neg\n"); FUNC1(1);
	}
	return 0;
}