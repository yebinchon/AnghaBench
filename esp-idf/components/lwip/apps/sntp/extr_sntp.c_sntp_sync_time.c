
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; long tv_usec; } ;
typedef long int64_t ;


 int ESP_LOGD (int ,char*) ;
 scalar_t__ SNTP_SYNC_MODE_IMMED ;
 scalar_t__ SNTP_SYNC_MODE_SMOOTH ;
 int SNTP_SYNC_STATUS_COMPLETED ;
 int SNTP_SYNC_STATUS_IN_PROGRESS ;
 int TAG ;
 int adjtime (struct timeval*,int *) ;
 int gettimeofday (struct timeval*,int *) ;
 int settimeofday (struct timeval*,int *) ;
 int sntp_set_sync_status (int ) ;
 scalar_t__ sntp_sync_mode ;
 int time_sync_notification_cb (struct timeval*) ;

void __attribute__((weak)) sntp_sync_time(struct timeval *tv)
{
    if (sntp_sync_mode == SNTP_SYNC_MODE_IMMED) {
        settimeofday(tv, ((void*)0));
        sntp_set_sync_status(SNTP_SYNC_STATUS_COMPLETED);
    } else if (sntp_sync_mode == SNTP_SYNC_MODE_SMOOTH) {
        struct timeval tv_now;
        gettimeofday(&tv_now, ((void*)0));
        int64_t cpu_time = (int64_t)tv_now.tv_sec * 1000000L + (int64_t)tv_now.tv_usec;
        int64_t sntp_time = (int64_t)tv->tv_sec * 1000000L + (int64_t)tv->tv_usec;
        int64_t delta = sntp_time - cpu_time;
        struct timeval tv_delta = { .tv_sec = delta / 1000000L, .tv_usec = delta % 1000000L };
        if (adjtime(&tv_delta, ((void*)0)) == -1) {
            ESP_LOGD(TAG, "Function adjtime don't update time because the error is very big");
            settimeofday(tv, ((void*)0));
            ESP_LOGD(TAG, "Time was synchronized through settimeofday");
            sntp_set_sync_status(SNTP_SYNC_STATUS_COMPLETED);
        } else {
            sntp_set_sync_status(SNTP_SYNC_STATUS_IN_PROGRESS);
        }
    }
    if (time_sync_notification_cb) {
        time_sync_notification_cb(tv);
    }
}
