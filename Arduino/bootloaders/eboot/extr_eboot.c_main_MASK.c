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
struct eboot_command {scalar_t__ action; scalar_t__* args; } ;

/* Variables and functions */
 scalar_t__ ACTION_COPY_RAW ; 
 scalar_t__ ACTION_LOAD_APP ; 
 int /*<<< orphan*/  SWRST ; 
 int FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct eboot_command*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8()
{
    int res = 9;
    struct eboot_command cmd;
    
    FUNC7(0);

    if (FUNC2(&cmd) == 0) {
        // valid command was passed via RTC_MEM
        FUNC1();
        FUNC3('@');
    } else {
        // no valid command found
        cmd.action = ACTION_LOAD_APP;
        cmd.args[0] = 0;
        FUNC3('~');
    }

    if (cmd.action == ACTION_COPY_RAW) {
        FUNC3('c'); FUNC3('p'); FUNC3(':');
        FUNC4();
        res = FUNC0(cmd.args[0], cmd.args[1], cmd.args[2]);
        FUNC5();
        FUNC3('0'+res); FUNC3('\n');
        if (res == 0) {
            cmd.action = ACTION_LOAD_APP;
            cmd.args[0] = cmd.args[1];
        }
    }

    if (cmd.action == ACTION_LOAD_APP) {
        FUNC3('l'); FUNC3('d'); FUNC3('\n');
        res = FUNC6(cmd.args[0]);
        //we will get to this only on load fail
        FUNC3('e'); FUNC3(':'); FUNC3('0'+res); FUNC3('\n');
    }

    if (res) {
        SWRST;
    }

    while(true){}
}