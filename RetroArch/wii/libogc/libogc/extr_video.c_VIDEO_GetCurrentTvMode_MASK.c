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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ VI_DEBUG ; 
 scalar_t__ VI_EURGB60 ; 
 scalar_t__ VI_MPAL ; 
 scalar_t__ VI_NTSC ; 
 scalar_t__ VI_PAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ currTvMode ; 

u32 FUNC2()
{
	u32 mode;
	u32 level;
	u32 tv;

	FUNC0(level);
	mode = currTvMode;

	if(mode==VI_DEBUG) tv = VI_NTSC;
	else if(mode==VI_EURGB60) tv = VI_EURGB60;
	else if(mode==VI_MPAL) tv = VI_MPAL;
	else if(mode==VI_NTSC) tv = VI_NTSC;
	else tv = VI_PAL;
	FUNC1(level);

	return tv;
}