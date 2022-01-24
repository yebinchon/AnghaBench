#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_9__ {scalar_t__ num; scalar_t__ den; } ;
typedef  TYPE_1__ AVRational ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  AV_ROUND_DOWN ; 
 int /*<<< orphan*/  AV_ROUND_UP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_1__,TYPE_1__) ; 
 int FUNC3 (int,TYPE_1__,TYPE_1__,int /*<<< orphan*/ ) ; 

int64_t FUNC4(AVRational in_tb, int64_t in_ts,  AVRational fs_tb, int duration, int64_t *last, AVRational out_tb){
    int64_t a, b, this;

    FUNC0(in_ts != AV_NOPTS_VALUE);
    FUNC0(duration >= 0);

    if (*last == AV_NOPTS_VALUE || !duration || in_tb.num*(int64_t)out_tb.den <= out_tb.num*(int64_t)in_tb.den) {
simple_round:
        *last = FUNC2(in_ts, in_tb, fs_tb) + duration;
        return FUNC2(in_ts, in_tb, out_tb);
    }

    a =  FUNC3(2*in_ts-1, in_tb, fs_tb, AV_ROUND_DOWN)   >>1;
    b = (FUNC3(2*in_ts+1, in_tb, fs_tb, AV_ROUND_UP  )+1)>>1;
    if (*last < 2*a - b || *last > 2*b - a)
        goto simple_round;

    this = FUNC1(*last, a, b);
    *last = this + duration;

    return FUNC2(this, fs_tb, out_tb);
}