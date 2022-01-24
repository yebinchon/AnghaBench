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
typedef  int u32 ;
struct _xy {int line; int /*<<< orphan*/  cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct _xy* FUNC3 () ; 
 int* _viReg ; 
 int sampling_rate ; 

void FUNC4(u32 samplingrate)
{
	u32 div,level;
	struct _xy *xy = NULL;

	if(samplingrate>11) samplingrate = 11;

	FUNC1(level);
	sampling_rate = samplingrate;
	xy = FUNC3();

	div = 1;
	if(_viReg[54]&0x0001) div = 2;

	FUNC0(div*xy[samplingrate].line,xy[samplingrate].cnt);
	FUNC2(level);
}