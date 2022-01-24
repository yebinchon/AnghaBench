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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ mute ; 
 int soundvolume ; 

void FUNC2(int n)
{
	switch(n)
	{
	case -1:	soundvolume-=10; if(soundvolume<0) soundvolume=0; break;
	case 0:		soundvolume=100; break;
	case 1:		soundvolume+=10; if(soundvolume>150) soundvolume=150; break;
	}
	mute=0;
	FUNC0(soundvolume);
	FUNC1("Sound volume %d.", soundvolume);
}