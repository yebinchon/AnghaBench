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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  blehr_tx_timer ; 
 scalar_t__ pdPASS ; 
 int portTICK_PERIOD_MS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(void)
{
    int rc;

    if (FUNC1(blehr_tx_timer, 1000 / portTICK_PERIOD_MS ) == pdPASS) {
        rc = 0;
    } else {
        rc = 1;
    }

    FUNC0(rc == 0);

}