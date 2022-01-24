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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int gamma_was_changed ; 
 int* memregs ; 
 double FUNC1 (double,float) ; 
 int /*<<< orphan*/  FUNC2 (float,float) ; 

__attribute__((used)) static void FUNC3(int g100, int A_SNs_curve)
{
	float gamma = (float) g100 / 100.0f;
	int i;
	gamma = 1 / gamma;

	if (g100 == 100)
		A_SNs_curve = 0;

	/* enable gamma */
	memregs[0x2880>>1] &= ~(1<<12);

	memregs[0x295C>>1] = 0;
	for (i = 0; i < 256; i++)
	{
		unsigned char g;
		unsigned short s;
		const unsigned short grey50=143, grey75=177, grey25=97;
		double blah;

		if (A_SNs_curve)
		{
			// The next formula is all about gaussian interpolation
			blah = ((  -128 * FUNC0(-FUNC2((float) i/64.0f + 2.0f , 2.0f))) +
				(   -64 * FUNC0(-FUNC2((float) i/64.0f + 1.0f , 2.0f))) +
				(grey25 * FUNC0(-FUNC2((float) i/64.0f - 1.0f , 2.0f))) +
				(grey50 * FUNC0(-FUNC2((float) i/64.0f - 2.0f , 2.0f))) +
				(grey75 * FUNC0(-FUNC2((float) i/64.0f - 3.0f , 2.0f))) +
				(   256 * FUNC0(-FUNC2((float) i/64.0f - 4.0f , 2.0f))) +
				(   320 * FUNC0(-FUNC2((float) i/64.0f - 5.0f , 2.0f))) +
				(   384 * FUNC0(-FUNC2((float) i/64.0f - 6.0f , 2.0f)))) / 1.772637;
			blah += 0.5;
		}
		else
		{
			blah = (double)i;
		}

		g = (unsigned char)(255.0 * FUNC1(blah/255.0, gamma));
		//printf("%d : %d\n", i, g);
		s = (g<<8) | g;
		memregs[0x295E>>1]= s;
		memregs[0x295E>>1]= g;
	}

	gamma_was_changed = 1;
}