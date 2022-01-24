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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  BT_RC_TG_TAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ s_volume ; 
 int /*<<< orphan*/  s_volume_lock ; 

__attribute__((used)) static void FUNC3(uint8_t volume)
{
    FUNC0(BT_RC_TG_TAG, "Volume is set by remote controller %d%%\n", (uint32_t)volume * 100 / 0x7f);
    FUNC1(&s_volume_lock);
    s_volume = volume;
    FUNC2(&s_volume_lock);
}