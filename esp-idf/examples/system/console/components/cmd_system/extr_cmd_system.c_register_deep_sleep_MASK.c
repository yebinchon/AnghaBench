#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* command; char* help; TYPE_3__* argtable; int /*<<< orphan*/ * func; int /*<<< orphan*/ * hint; } ;
typedef  TYPE_1__ esp_console_cmd_t ;
struct TYPE_5__ {int /*<<< orphan*/  end; void* wakeup_gpio_level; void* wakeup_gpio_num; void* wakeup_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  deep_sleep ; 
 TYPE_3__ deep_sleep_args ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 

__attribute__((used)) static void FUNC4(void)
{
    deep_sleep_args.wakeup_time =
        FUNC2("t", "time", "<t>", "Wake up time, ms");
    deep_sleep_args.wakeup_gpio_num =
        FUNC2(NULL, "io", "<n>",
                 "If specified, wakeup using GPIO with given number");
    deep_sleep_args.wakeup_gpio_level =
        FUNC2(NULL, "io_level", "<0|1>", "GPIO level to trigger wakeup");
    deep_sleep_args.end = FUNC1(3);

    const esp_console_cmd_t cmd = {
        .command = "deep_sleep",
        .help = "Enter deep sleep mode. "
        "Two wakeup modes are supported: timer and GPIO. "
        "If no wakeup option is specified, will sleep indefinitely.",
        .hint = NULL,
        .func = &deep_sleep,
        .argtable = &deep_sleep_args
    };
    FUNC0( FUNC3(&cmd) );
}