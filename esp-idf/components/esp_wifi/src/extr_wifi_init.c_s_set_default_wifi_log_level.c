
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_LOG_DEFAULT_LEVEL ;
 int esp_log_level_set (char*,int ) ;

__attribute__((used)) static void __attribute__((constructor)) s_set_default_wifi_log_level(void)
{




    esp_log_level_set("wifi", CONFIG_LOG_DEFAULT_LEVEL);
    esp_log_level_set("mesh", CONFIG_LOG_DEFAULT_LEVEL);
}
