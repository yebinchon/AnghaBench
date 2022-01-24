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
 int /*<<< orphan*/  rx_done ; 
 int /*<<< orphan*/  tasks_done ; 
 int /*<<< orphan*/  tx_done ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void)
{
    //Cleanup
    FUNC0(tx_done);
    FUNC0(rx_done);
    FUNC0(tasks_done);
}