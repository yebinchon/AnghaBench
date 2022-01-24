#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int alarm_en; int auto_reload; int /*<<< orphan*/  counter_en; int /*<<< orphan*/  intr_type; int /*<<< orphan*/  divider; int /*<<< orphan*/  counter_dir; } ;
typedef  TYPE_1__ timer_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_COUNT_UP ; 
 int /*<<< orphan*/  TIMER_DIVIDER ; 
 int /*<<< orphan*/  TIMER_INTR_LEVEL ; 
 int /*<<< orphan*/  TIMER_PAUSE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 

__attribute__((used)) static void FUNC5(int timer_group, int timer_idx, int ival)
{
    timer_config_t config;
    config.alarm_en = 1;
    config.auto_reload = 1;
    config.counter_dir = TIMER_COUNT_UP;
    config.divider = TIMER_DIVIDER;
    config.intr_type = TIMER_INTR_LEVEL;
    config.counter_en = TIMER_PAUSE;
    /*Configure timer*/
    FUNC1(timer_group, timer_idx, &config);
    /*Stop timer counter*/
    FUNC2(timer_group, timer_idx);
    /*Load counter value */
    FUNC4(timer_group, timer_idx, 0x00000000ULL);
    /*Set alarm value*/
    FUNC3(timer_group, timer_idx, ival);
    /*Enable timer interrupt*/
    FUNC0(timer_group, timer_idx);
}