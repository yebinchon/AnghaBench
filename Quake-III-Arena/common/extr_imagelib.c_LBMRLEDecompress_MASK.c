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
typedef  int byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 

byte  *FUNC3 (byte *source,byte *unpacked, int bpwidth)
{
	int     count;
	byte    b,rept;

	count = 0;

	do
	{
		rept = *source++;

		if (rept > 0x80)
		{
			rept = (rept^0xff)+2;
			b = *source++;
			FUNC2(unpacked,b,rept);
			unpacked += rept;
		}
		else if (rept < 0x80)
		{
			rept++;
			FUNC1(unpacked,source,rept);
			unpacked += rept;
			source += rept;
		}
		else
			rept = 0;               // rept of 0x80 is NOP

		count += rept;

	} while (count<bpwidth);

	if (count>bpwidth)
		FUNC0 ("Decompression exceeded width!\n");


	return source;
}