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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ _wd_sync_count ; 
 scalar_t__ _wd_sync_level ; 
 int /*<<< orphan*/  _wd_ticks_queue ; 
 scalar_t__ _wd_ticks_since_boot ; 

void FUNC1()
{
	_wd_sync_level = 0;
	_wd_sync_count = 0;
	_wd_ticks_since_boot = 0;

	FUNC0(&_wd_ticks_queue);
}