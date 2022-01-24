#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ubyte ;
struct TYPE_3__ {int step; short predictor; } ;
typedef  TYPE_1__ WENCStatus ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int,int) ; 
 int FUNC3 (int) ; 
 int* yamaha_difflookup ; 
 int* yamaha_indexscale ; 

ubyte FUNC4(WENCStatus *info,short sample)
{
	int nibble,delta;

	if(!info->step) {
		info->predictor = 0;
		info->step = 127;
	}

	delta = sample - info->predictor;
	nibble = FUNC1(7,(FUNC0(delta)*4)/info->step) + ((delta<0)*8);

	info->predictor += ((info->step*yamaha_difflookup[nibble])/8);
	info->predictor = FUNC3(info->predictor);
	info->step = (info->step*yamaha_indexscale[nibble])>>8;
	info->step = FUNC2(info->step,127,24576);

	return nibble;
}