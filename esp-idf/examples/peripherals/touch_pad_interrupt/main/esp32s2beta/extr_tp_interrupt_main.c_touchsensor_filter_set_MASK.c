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
typedef  int /*<<< orphan*/  touch_filter_mode_t ;
struct TYPE_3__ {int debounce_cnt; int hysteresis_thr; int noise_thr; int noise_neg_thr; int neg_noise_limit; int jitter_step; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ touch_filter_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  TOUCH_PAD_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(touch_filter_mode_t mode)
{
    /* Filter function */
    touch_filter_config_t filter_info = {
        .mode = mode,           // Test jitter and filter 1/4.
        .debounce_cnt = 1,      // 1 time count.
        .hysteresis_thr = 1,    // 9.4%
        .noise_thr = 1,         // 37.5%
        .noise_neg_thr = 1,     // 37.5%
        .neg_noise_limit = 10,  // 10 time count.
        .jitter_step = 4,       // use for jitter mode.
    };
    FUNC3(&filter_info);
    FUNC2();
    FUNC1(TOUCH_PAD_MAX);
    FUNC0(TAG, "touch pad filter init %d", mode);
}