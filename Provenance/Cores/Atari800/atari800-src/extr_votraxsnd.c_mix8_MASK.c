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
typedef  scalar_t__ UBYTE ;
typedef  int SWORD ;

/* Variables and functions */
 int num_pokeys ; 

__attribute__((used)) static void FUNC0(UBYTE *dst, SWORD *src, int sndn, int volume)
{
	SWORD s1, s2;
	int val;

	while (sndn--) {
		s1 = *src;
		s1 = s1*volume/128;
		s2 = ((int)(*dst) - 0x80)*256;
		src++;
		val = s1 + s2;
		if (val > 32767) val = 32767;
		if (val < -32768) val = -32768;
		*dst++ = (UBYTE)((val/256) + 0x80);
		if (num_pokeys == 2) {
			dst++;
		}
	}
}