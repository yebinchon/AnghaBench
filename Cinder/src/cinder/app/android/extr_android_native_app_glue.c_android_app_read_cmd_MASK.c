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
struct android_app {int /*<<< orphan*/  msgread; } ;
typedef  int int8_t ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
#define  APP_CMD_SAVE_STATE 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct android_app*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int) ; 

int8_t FUNC3(struct android_app* android_app) {
    int8_t cmd;
    if (FUNC2(android_app->msgread, &cmd, sizeof(cmd)) == sizeof(cmd)) {
        switch (cmd) {
            case APP_CMD_SAVE_STATE:
                FUNC1(android_app);
                break;
        }
        return cmd;
    } else {
        FUNC0("No data on command pipe!");
    }
    return -1;
}