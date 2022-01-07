
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ password; scalar_t__ ssid; } ;
typedef TYPE_1__ wifi_sta_config_t ;


 int ESP_LOGD (int ,char*,char const*,char const*,...) ;
 int TAG ;
 int memset (scalar_t__,char,size_t) ;
 size_t strlen (char const*) ;
 int strnlen (char const*,int) ;

__attribute__((used)) static void debug_print_wifi_credentials(wifi_sta_config_t sta, const char* pretext)
{
    size_t passlen = strlen((const char*) sta.password);
    ESP_LOGD(TAG, "%s Wi-Fi SSID     : %.*s", pretext,
             strnlen((const char *) sta.ssid, sizeof(sta.ssid)), (const char *) sta.ssid);

    if (passlen) {

        memset(sta.password + (passlen > 3), '*', passlen - 2*(passlen > 3));
        ESP_LOGD(TAG, "%s Wi-Fi Password : %s", pretext, (const char *) sta.password);
    }
}
