
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {int second; int minute; scalar_t__ hour; } ;
struct TYPE_4__ {int day; int month; scalar_t__ year; } ;
struct TYPE_6__ {int speed; int altitude; int longitude; int latitude; TYPE_2__ tim; TYPE_1__ date; } ;
typedef TYPE_3__ gps_t ;
typedef int esp_event_base_t ;


 int ESP_LOGI (int ,char*,scalar_t__,int ,int ,scalar_t__,int ,int ,int ,int ,int ,int ) ;
 int ESP_LOGW (int ,char*,char*) ;


 int TAG ;
 scalar_t__ TIME_ZONE ;
 scalar_t__ YEAR_BASE ;

__attribute__((used)) static void gps_event_handler(void *event_handler_arg, esp_event_base_t event_base, int32_t event_id, void *event_data)
{
    gps_t *gps = ((void*)0);
    switch (event_id) {
    case 128:
        gps = (gps_t *)event_data;

        ESP_LOGI(TAG, "%d/%d/%d %d:%d:%d => \r\n"
                 "\t\t\t\t\t\tlatitude   = %.05f°N\r\n"
                 "\t\t\t\t\t\tlongtitude = %.05f°E\r\n"
                 "\t\t\t\t\t\taltitude   = %.02fm\r\n"
                 "\t\t\t\t\t\tspeed      = %fm/s",
                 gps->date.year + YEAR_BASE, gps->date.month, gps->date.day,
                 gps->tim.hour + TIME_ZONE, gps->tim.minute, gps->tim.second,
                 gps->latitude, gps->longitude, gps->altitude, gps->speed);
        break;
    case 129:

        ESP_LOGW(TAG, "Unknown statement:%s", (char *)event_data);
        break;
    default:
        break;
    }
}
