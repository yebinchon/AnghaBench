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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  GXTlutRegionCallback ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tlut_regionCB ; 

GXTlutRegionCallback FUNC2(GXTlutRegionCallback cb)
{
	u32 level;
	GXTlutRegionCallback ret;

	FUNC0(level);
	ret = tlut_regionCB;
	tlut_regionCB = cb;
	FUNC1(level);

	return ret;
}