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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TAG ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(void)
{
    int i = 0;
    FUNC0(TAG, "When a new firmware is available on the server, press the reset button to download it");
    while(1) {
        FUNC0(TAG, "Waiting for a new firmware ... %d", ++i);
        FUNC1(2000 / portTICK_PERIOD_MS);
    }
}