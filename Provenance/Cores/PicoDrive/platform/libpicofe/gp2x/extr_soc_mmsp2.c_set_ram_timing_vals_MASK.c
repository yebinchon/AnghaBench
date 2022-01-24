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
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int* memregs ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(int tCAS, int tRC, int tRAS, int tWR, int tMRD, int tRFC, int tRP, int tRCD)
{
	int i;
	FUNC0(tCAS, -2, 0x1);
	FUNC0(tRC,  -1, 0xf);
	FUNC0(tRAS, -1, 0xf);
	FUNC0(tWR,  -1, 0xf);
	FUNC0(tMRD, -1, 0xf);
	FUNC0(tRFC, -1, 0xf);
	FUNC0(tRP,  -1, 0xf);
	FUNC0(tRCD, -1, 0xf);

	/* get spend_cycles() into cache */
	FUNC3(1);

	memregs[0x3802>>1] = ((tMRD & 0xF) << 12) | ((tRFC & 0xF) << 8) | ((tRP & 0xF) << 4) | (tRCD & 0xF);
	memregs[0x3804>>1] = 0x8000 | ((tCAS & 1) << 12) | ((tRC & 0xF) << 8) | ((tRAS & 0xF) << 4) | (tWR & 0xF);

	/* be sure we don't access the mem while it's being reprogrammed */
	FUNC3(128*1024);
	for (i = 0; i < 8*1024; i++)
		if (!(memregs[0x3804>>1] & 0x8000))
			break;

	FUNC2("RAM timings set.\n");
	return;
bad:
	FUNC1(stderr, "RAM timings invalid.\n");
}