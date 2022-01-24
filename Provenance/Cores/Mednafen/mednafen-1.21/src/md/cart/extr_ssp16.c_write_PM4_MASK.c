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
 int EL_ANOMALY ; 
 int EL_SVP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int,scalar_t__) ; 
 scalar_t__ rPM4 ; 

__attribute__((used)) static void FUNC3(u32 d)
{
	u32 r = FUNC2(4, 1, d);
	if (r != (u32)-1) return;
	// can be removed?
	FUNC1(EL_SVP|EL_ANOMALY, "PM4 raw w %04x @ %04x", d, FUNC0());
	rPM4 = d;
}