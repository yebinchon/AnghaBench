
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* esp_bt_gap_cb_t ) (int ,int *) ;
typedef int esp_bt_gap_cb_param_t ;
typedef int esp_bt_gap_cb_event_t ;


 int BTC_PID_GAP_BT ;
 int btc_profile_cb_get (int ) ;

__attribute__((used)) static inline void btc_gap_bt_cb_to_app(esp_bt_gap_cb_event_t event, esp_bt_gap_cb_param_t *param)
{
    esp_bt_gap_cb_t cb = (esp_bt_gap_cb_t)btc_profile_cb_get(BTC_PID_GAP_BT);
    if (cb) {
        cb(event, param);
    }
}
