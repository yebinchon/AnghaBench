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
 int /*<<< orphan*/  f ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int) ; 

int FUNC7()
{
	int i, op;

	FUNC3(FUNC4(0));

	f = FUNC1("test_misc2.bin", "wb");
	if (!f) return 1;

	FUNC5(0x00ff8000); // stack
	FUNC5(0x300); // IP

	for (i=0x100/4-2; i; i--)
	{
		FUNC5(0x200+i*4); // exception vectors
	}

	for (i=0x100/4; i; i--)
	{
		FUNC5(0); // pad
	}

	for (i=0x100/4; i; i--)
	{
		FUNC5(0x4e734e73); // fill with rte instructions
	}

	for (op = 0; op < 0x10000; op++)
	{
		if ((op&0xf000) == 0x6000) // Bxx
		{
			if ((op&0x00ff) == 0)
				FUNC6(op, 6, 0, 0);
		}
		else if ((op&0xf0f8)==0x50c8) // DBxx
		{
			FUNC6(op, 6, 0, 0);
		}
		else if ((op&0xff80)==0x4e80) // Jsr
		{
			int addr = 0x300 + op*8 + 8;
			if ((op&0x3f) == 0x39)
				FUNC6(op, addr >> 16, addr & 0xffff, 0);
		}
		else if ((op&0xf000)==0xa000 || (op&0xf000)==0xf000) // a-line, f-line
		{
			if (op != 0xa000 && op != 0xf000) continue;
		}
		else if ((op&0xfff8)==0x4e70&&op!=0x4e71&&op!=0x4e76); // rte, rts, stop, reset
		else
		{
			FUNC6(op, FUNC2(), FUNC2(), FUNC2());
		}
	}

	// jump to the beginning
	FUNC6(0x4ef8, 0x300, 0x4ef8, 0x300);
	FUNC6(0x4ef8, 0x300, 0x4ef8, 0x300);

	FUNC0(f);
	return 0;
}