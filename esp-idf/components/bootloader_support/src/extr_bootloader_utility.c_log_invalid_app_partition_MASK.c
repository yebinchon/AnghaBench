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
#define  FACTORY_INDEX 129 
 int /*<<< orphan*/  TAG ; 
#define  TEST_APP_INDEX 128 

__attribute__((used)) static void FUNC1(int index)
{
    const char *not_bootable = " is not bootable"; /* save a few string literal bytes */
    switch (index) {
    case FACTORY_INDEX:
        FUNC0(TAG, "Factory app partition%s", not_bootable);
        break;
    case TEST_APP_INDEX:
        FUNC0(TAG, "Factory test app partition%s", not_bootable);
        break;
    default:
        FUNC0(TAG, "OTA app partition slot %d%s", index, not_bootable);
        break;
    }
}