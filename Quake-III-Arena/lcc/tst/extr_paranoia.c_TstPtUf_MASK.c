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
 int /*<<< orphan*/  FUNC0 (size_t,char*) ; 
 size_t Defect ; 
 scalar_t__* ErrCnt ; 
 int FUNC1 (double) ; 
 int N ; 
 double One ; 
 int /*<<< orphan*/  FUNC2 () ; 
 double Q9 ; 
 int Radix ; 
 double Random1 ; 
 double Random2 ; 
 size_t Serious ; 
 double Two ; 
 int U2 ; 
 double V9 ; 
 double Z ; 
 double Zero ; 
 int /*<<< orphan*/  ovfl_buf ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ sigfpe ; 
 scalar_t__ sigsave ; 

FUNC5()
{
	N = 0;
	if (Z != Zero) {
		FUNC3("Since comparison denies Z = 0, evaluating ");
		FUNC3("(Z + Z) / Z should be safe.\n");
		sigsave = sigfpe;
		if (FUNC4(ovfl_buf)) goto very_serious;
		Q9 = (Z + Z) / Z;
		FUNC3("What the machine gets for (Z + Z) / Z is  %.17e .\n",
			Q9);
		if (FUNC1(Q9 - Two) < Radix * U2) {
			FUNC3("This is O.K., provided Over/Underflow");
			FUNC3(" has NOT just been signaled.\n");
			}
		else {
			if ((Q9 < One) || (Q9 > Two)) {
very_serious:
				N = 1;
				ErrCnt [Serious] = ErrCnt [Serious] + 1;
				FUNC3("This is a VERY SERIOUS DEFECT!\n");
				}
			else {
				N = 1;
				ErrCnt [Defect] = ErrCnt [Defect] + 1;
				FUNC3("This is a DEFECT!\n");
				}
			}
		sigsave = 0;
		V9 = Z * One;
		Random1 = V9;
		V9 = One * Z;
		Random2 = V9;
		V9 = Z / One;
		if ((Z == Random1) && (Z == Random2) && (Z == V9)) {
			if (N > 0) FUNC2();
			}
		else {
			N = 1;
			FUNC0(Defect, "What prints as Z = ");
			FUNC3("%.17e\n\tcompares different from  ", Z);
			if (Z != Random1) FUNC3("Z * 1 = %.17e ", Random1);
			if (! ((Z == Random2)
				|| (Random2 == Random1)))
				FUNC3("1 * Z == %g\n", Random2);
			if (! (Z == V9)) FUNC3("Z / 1 = %.17e\n", V9);
			if (Random2 != Random1) {
				ErrCnt [Defect] = ErrCnt [Defect] + 1;
				FUNC0(Defect, "Multiplication does not commute!\n");
				FUNC3("\tComparison alleges that 1 * Z = %.17e\n",
					Random2);
				FUNC3("\tdiffers from Z * 1 = %.17e\n", Random1);
				}
			FUNC2();
			}
		}
	}