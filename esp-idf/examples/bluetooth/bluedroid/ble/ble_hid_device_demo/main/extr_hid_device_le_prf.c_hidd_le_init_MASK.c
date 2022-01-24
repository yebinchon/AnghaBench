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
typedef  int /*<<< orphan*/  hidd_le_env_t ;

/* Variables and functions */
 int /*<<< orphan*/  hidd_le_env ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC1(void)
{

    // Reset the hid device target environment
    FUNC0(&hidd_le_env, 0, sizeof(hidd_le_env_t));
}