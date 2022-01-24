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
struct android_app {int /*<<< orphan*/  msgwrite; } ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct android_app* android_app, int8_t cmd) {
    if (FUNC2(android_app->msgwrite, &cmd, sizeof(cmd)) != sizeof(cmd)) {
        FUNC0("Failure writing android_app cmd: %s\n", FUNC1(errno));
    }
}