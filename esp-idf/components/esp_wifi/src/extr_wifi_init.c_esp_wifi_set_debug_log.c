
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int WIFI_LOG_DEBUG ;
 int WIFI_LOG_INFO ;
 int WIFI_LOG_MODULE_ALL ;
 int WIFI_LOG_MODULE_COEX ;
 int WIFI_LOG_MODULE_MESH ;
 int WIFI_LOG_MODULE_WIFI ;
 int WIFI_LOG_SUBMODULE_ALL ;
 int WIFI_LOG_SUBMODULE_CONN ;
 int WIFI_LOG_SUBMODULE_INIT ;
 int WIFI_LOG_SUBMODULE_IOCTL ;
 int WIFI_LOG_SUBMODULE_SCAN ;
 int WIFI_LOG_VERBOSE ;
 int esp_wifi_internal_set_log_level (int ) ;
 int esp_wifi_internal_set_log_mod (int ,int ,int) ;

__attribute__((used)) static void esp_wifi_set_debug_log(void)
{
}
