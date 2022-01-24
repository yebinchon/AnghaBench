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
 int /*<<< orphan*/  OSI_MUTEX_MAX_TIMEOUT ; 
 int /*<<< orphan*/  bm_irq_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

unsigned int FUNC1(void)
{
    /* Changed by Espressif. In BLE Mesh, in order to improve the real-time
     * requirements of bt controller, we use task lock instead of IRQ lock.
     */
    FUNC0(&bm_irq_lock, OSI_MUTEX_MAX_TIMEOUT);
    return 0;
}