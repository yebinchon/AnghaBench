#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int TickType_t ;
struct TYPE_3__ {int interval; int time; } ;
struct TYPE_4__ {int finish; int total_len; TYPE_1__ cfg; } ;

/* Variables and functions */
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_2__ s_iperf_ctrl ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void *arg)
{
    TickType_t delay_interval = (s_iperf_ctrl.cfg.interval * 1000) / portTICK_RATE_MS;
    uint32_t interval = s_iperf_ctrl.cfg.interval;
    uint32_t time = s_iperf_ctrl.cfg.time;
    uint32_t last_len = 0;
    uint32_t cur = 0;

    FUNC0("\n%16s %s\n", "Interval", "Bandwidth");
    while (!s_iperf_ctrl.finish) {
        FUNC1(delay_interval);
        FUNC0("%4d-%4d sec       %.2f Mbits/sec\n", cur, cur + interval, (double)((s_iperf_ctrl.total_len - last_len) * 8) / interval / 1e6);
        cur += interval;
        last_len = s_iperf_ctrl.total_len;
        if (cur == time) {
            break;
        }
    }

    if (cur != 0) {
        FUNC0("%4d-%4d sec       %.2f Mbits/sec\n", 0, time, (double)(s_iperf_ctrl.total_len * 8) / cur / 1e6);
    }

    s_iperf_ctrl.finish = true;
    FUNC2(NULL);
}