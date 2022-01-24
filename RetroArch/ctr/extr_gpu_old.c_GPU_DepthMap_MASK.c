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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GPUREG_DEPTHMAP_ENABLE ; 
 int /*<<< orphan*/  GPUREG_DEPTHMAP_OFFSET ; 
 int /*<<< orphan*/  GPUREG_DEPTHMAP_SCALE ; 
 int FUNC1 (float) ; 

void FUNC2(float zScale, float zOffset)
{
	FUNC0(GPUREG_DEPTHMAP_ENABLE, 0x00000001);
	FUNC0(GPUREG_DEPTHMAP_SCALE, FUNC1(zScale));
	FUNC0(GPUREG_DEPTHMAP_OFFSET, FUNC1(zOffset));
}