#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long uint64_t ;
struct TYPE_8__ {TYPE_3__* wakeup_gpio_level; TYPE_2__* wakeup_gpio_num; TYPE_1__* wakeup_time; int /*<<< orphan*/  end; } ;
struct TYPE_7__ {int* ival; scalar_t__ count; } ;
struct TYPE_6__ {int* ival; scalar_t__ count; } ;
struct TYPE_5__ {unsigned long long* ival; scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  GPIO_NUM_12 ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC3 (int,char**,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_4__ deep_sleep_args ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC10(int argc, char **argv)
{
    int nerrors = FUNC3(argc, argv, (void **) &deep_sleep_args);
    if (nerrors != 0) {
        FUNC4(stderr, deep_sleep_args.end, argv[0]);
        return 1;
    }
    if (deep_sleep_args.wakeup_time->count) {
        uint64_t timeout = 1000ULL * deep_sleep_args.wakeup_time->ival[0];
        FUNC2(TAG, "Enabling timer wakeup, timeout=%lluus", timeout);
        FUNC0( FUNC7(timeout) );
    }
    if (deep_sleep_args.wakeup_gpio_num->count) {
        int io_num = deep_sleep_args.wakeup_gpio_num->ival[0];
        if (!FUNC8(io_num)) {
            FUNC1(TAG, "GPIO %d is not an RTC IO", io_num);
            return 1;
        }
        int level = 0;
        if (deep_sleep_args.wakeup_gpio_level->count) {
            level = deep_sleep_args.wakeup_gpio_level->ival[0];
            if (level != 0 && level != 1) {
                FUNC1(TAG, "Invalid wakeup level: %d", level);
                return 1;
            }
        }
        FUNC2(TAG, "Enabling wakeup on GPIO%d, wakeup on %s level",
                 io_num, level ? "HIGH" : "LOW");

        FUNC0( FUNC6(1ULL << io_num, level) );
    }
    FUNC9(GPIO_NUM_12);
    FUNC5();
}