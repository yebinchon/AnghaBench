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

/* Variables and functions */
 int /*<<< orphan*/  EXI_CHANNEL_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static u32 FUNC3(u32 *gctime)
{
	u32 cnt,time1,time2;

	FUNC2();

	cnt = 0;

	while(cnt<16) {
		if(FUNC1(&time1)==0
			|| FUNC1(&time2)==0) {
			FUNC0(EXI_CHANNEL_0);
			break;
		}
		if(time1==time2) {
			*gctime = time1;
			FUNC0(EXI_CHANNEL_0);
			return 1;
		}
		cnt++;
	}
	return 0;
}