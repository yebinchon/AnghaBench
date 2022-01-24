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
typedef  size_t s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__** inputBuffer ; 
 scalar_t__* inputBufferValid ; 

u32 FUNC3(s32 chan,void *buf)
{
	u32 level,valid;
	FUNC1(level);
	FUNC0(chan);
	valid = inputBufferValid[chan];
	inputBufferValid[chan] = 0;
	if(valid) {
		((u32*)buf)[0] = inputBuffer[chan][0];
		((u32*)buf)[1] = inputBuffer[chan][1];
	}
	FUNC2(level);
	return valid;
}