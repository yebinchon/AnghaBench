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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ retraceCount ; 
 int /*<<< orphan*/  video_queue ; 

void FUNC3(void)
{
	u32 level;
	u32 retcnt;

	FUNC1(level);
	retcnt = retraceCount;
	do {
		FUNC0(video_queue);
	} while(retraceCount==retcnt);
	FUNC2(level);
}