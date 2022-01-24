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
 int Screen_HEIGHT ; 
 int Screen_WIDTH ; 
 scalar_t__ Screen_atari ; 
 unsigned char* Z_NULL ; 
 unsigned int FUNC0 (unsigned int,unsigned char*,int) ; 

__attribute__((used)) static unsigned int FUNC1(void)
{
	int y;
	unsigned int adler = FUNC0(0L,Z_NULL,0);
	for (y = 0; y < Screen_HEIGHT; y++) {
		adler = FUNC0(adler, (unsigned char*)Screen_atari + 24 + Screen_WIDTH*y, 360 - 24);
	}
	return adler;
}