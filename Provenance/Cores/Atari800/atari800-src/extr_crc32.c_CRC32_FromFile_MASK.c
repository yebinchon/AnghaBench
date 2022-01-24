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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  UBYTE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUF_SIZE ; 
 int FUNC0 (int,int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 

int FUNC3(FILE *f, ULONG *result)
{
	UBYTE buf[BUF_SIZE];
	ULONG crc = 0xffffffff;

	for (;;) {
		size_t len = FUNC2(buf, 1, BUF_SIZE, f);
		crc = FUNC0(crc, buf, len);
		if (len < BUF_SIZE)
			break;
	}
	*result = ~crc;
	return FUNC1(f);
}