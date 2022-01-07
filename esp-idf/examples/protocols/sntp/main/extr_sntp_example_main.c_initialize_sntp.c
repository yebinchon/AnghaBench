
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_LOGI (int ,char*) ;
 int SNTP_OPMODE_POLL ;
 int SNTP_SYNC_MODE_SMOOTH ;
 int TAG ;
 int sntp_init () ;
 int sntp_set_sync_mode (int ) ;
 int sntp_set_time_sync_notification_cb (int ) ;
 int sntp_setoperatingmode (int ) ;
 int sntp_setservername (int ,char*) ;
 int time_sync_notification_cb ;

__attribute__((used)) static void initialize_sntp(void)
{
    ESP_LOGI(TAG, "Initializing SNTP");
    sntp_setoperatingmode(SNTP_OPMODE_POLL);
    sntp_setservername(0, "pool.ntp.org");
    sntp_set_time_sync_notification_cb(time_sync_notification_cb);



    sntp_init();
}
