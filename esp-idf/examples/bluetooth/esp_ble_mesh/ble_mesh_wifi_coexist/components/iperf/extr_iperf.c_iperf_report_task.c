
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int TickType_t ;
struct TYPE_3__ {int interval; int time; } ;
struct TYPE_4__ {int finish; int total_len; TYPE_1__ cfg; } ;


 int portTICK_RATE_MS ;
 int printf (char*,...) ;
 TYPE_2__ s_iperf_ctrl ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;

void iperf_report_task(void *arg)
{
    TickType_t delay_interval = (s_iperf_ctrl.cfg.interval * 1000) / portTICK_RATE_MS;
    uint32_t interval = s_iperf_ctrl.cfg.interval;
    uint32_t time = s_iperf_ctrl.cfg.time;
    uint32_t last_len = 0;
    uint32_t cur = 0;

    printf("\n%16s %s\n", "Interval", "Bandwidth");
    while (!s_iperf_ctrl.finish) {
        vTaskDelay(delay_interval);
        printf("%4d-%4d sec       %.2f Mbits/sec\n", cur, cur + interval, (double)((s_iperf_ctrl.total_len - last_len) * 8) / interval / 1e6);
        cur += interval;
        last_len = s_iperf_ctrl.total_len;
        if (cur == time) {
            break;
        }
    }

    if (cur != 0) {
        printf("%4d-%4d sec       %.2f Mbits/sec\n", 0, time, (double)(s_iperf_ctrl.total_len * 8) / cur / 1e6);
    }

    s_iperf_ctrl.finish = 1;
    vTaskDelete(((void*)0));
}
