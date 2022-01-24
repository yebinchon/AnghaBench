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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FRACUNIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  min_scale_mtof ; 
 int /*<<< orphan*/  scale_ftom ; 
 int /*<<< orphan*/  scale_mtof ; 

void FUNC2(void)
{
    scale_mtof = min_scale_mtof;
    scale_ftom = FUNC1(FRACUNIT, scale_mtof);
    FUNC0();
}