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
 int TOUCH_PAD_MAX ; 
 int /*<<< orphan*/  TOUCH_THRESH_NO_USE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void)
{
    for (int i = 0;i< TOUCH_PAD_MAX;i++) {
        FUNC0(i, TOUCH_THRESH_NO_USE);
    }
}