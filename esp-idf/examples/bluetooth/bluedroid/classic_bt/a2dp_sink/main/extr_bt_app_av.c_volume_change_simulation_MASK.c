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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  BT_RC_TG_TAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int portTICK_RATE_MS ; 
 int s_volume ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void *arg)
{
    FUNC0(BT_RC_TG_TAG, "start volume change simulation");

    for (;;) {
        FUNC1(10000 / portTICK_RATE_MS);

        uint8_t volume = (s_volume + 5) & 0x7f;
        FUNC2(volume);
    }
}