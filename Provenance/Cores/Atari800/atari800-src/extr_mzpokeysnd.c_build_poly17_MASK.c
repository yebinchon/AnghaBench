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
 unsigned char* poly17tbl ; 

__attribute__((used)) static void FUNC0(void)
{
	unsigned int c;
	unsigned int i;
	unsigned int poly17 = 1;

	for(i = 0; i < 131071; i++) {
		poly17tbl[i] = (unsigned char) poly17;
		c = ((poly17 >> 11) ^ (poly17 >> 16)) & 1;
		poly17 = ((poly17 << 1) & 131071) + c;
	}
}