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
typedef  int /*<<< orphan*/  tmp ;
typedef  int USHORT ;
typedef  int UINT ;

/* Variables and functions */
 int FUNC0 (void*,int) ; 
 int FUNC1 () ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,int,int) ; 

void FUNC4(char *filename, UINT line, char *str, void *data, UINT size)
{
	char tmp[MAX_SIZE];
	USHORT cs;

	if (FUNC1() == false)
	{
		return;
	}

	// Take a checksum of the data
	if (size != 0)
	{
		cs = FUNC0(data, size);
	}
	else
	{
		cs = 0;
	}

	// Generating a String
	FUNC3(tmp, sizeof(tmp), "\"%s\" (Size=%5u, Crc=0x%04X)", str, size, cs);

	FUNC2(filename, line, tmp);
}