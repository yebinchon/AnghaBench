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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*,int) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

void FUNC4(char *buff, const char *end, int size)
{
	int pos, end_len;

	end_len = FUNC2(end);
	pos = FUNC1(buff, size);
	FUNC3(buff + pos, end, size - pos);
	buff[size - 1] = 0;
	if (pos + end_len > size - 1)
		FUNC0("Warning: path truncated: %s\n", buff);
}