
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* esp_blufi_event_cb_t ) (int ,int *) ;
typedef int esp_blufi_cb_param_t ;
typedef int esp_blufi_cb_event_t ;


 int BTC_PID_BLUFI ;
 int btc_profile_cb_get (int ) ;

__attribute__((used)) static inline void btc_blufi_cb_to_app(esp_blufi_cb_event_t event, esp_blufi_cb_param_t *param)
{
    esp_blufi_event_cb_t btc_blufi_cb = (esp_blufi_event_cb_t)btc_profile_cb_get(BTC_PID_BLUFI);
    if (btc_blufi_cb) {
 btc_blufi_cb(event, param);
    }
}
