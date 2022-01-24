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
 int /*<<< orphan*/  adv_data_sem ; 
 int /*<<< orphan*/  adv_enable_sem ; 
 int /*<<< orphan*/  adv_param_sem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scan_enable_sem ; 
 int /*<<< orphan*/  scan_param_sem ; 

void FUNC1(void)
{
    FUNC0(&adv_enable_sem);
    FUNC0(&adv_data_sem);
    FUNC0(&adv_param_sem);
    FUNC0(&scan_enable_sem);
    FUNC0(&scan_param_sem);
}