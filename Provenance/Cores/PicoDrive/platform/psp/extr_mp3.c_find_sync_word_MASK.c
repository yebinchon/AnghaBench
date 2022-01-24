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

__attribute__((used)) static int FUNC0(unsigned char *data, int len)
{
	int i;
	for (i = 0; i < len-1; i++)
	{
		if ( data[i+0] != 0xff) continue;
		if ((data[i+1] & 0xfe) == 0xfa) return i;
		i++;
	}
	return -1;
}