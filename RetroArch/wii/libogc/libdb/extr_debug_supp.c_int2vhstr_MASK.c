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
typedef  int s32 ;

/* Variables and functions */
 void** hexchars ; 

char* FUNC0(char *buf,s32 val)
{
	s32 i,nibble,shift;

	for(i=0,shift=28;i<8;i++,shift-=4) {
		nibble = (val>>shift)&0x0f;
		if(nibble) break;
	}
	if(i==8) {
		*buf++ = '0';
		return buf;
	}

	*buf++ = hexchars[nibble];
	for(i++,shift-=4;i<8;i++,shift-=4,buf++) {
		nibble = (val>>shift)&0x0f;
		*buf = hexchars[nibble];
	}
	return buf;
}