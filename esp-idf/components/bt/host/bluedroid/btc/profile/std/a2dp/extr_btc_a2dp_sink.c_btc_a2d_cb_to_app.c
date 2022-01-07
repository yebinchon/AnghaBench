
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* esp_a2d_cb_t ) (int ,int *) ;
typedef int esp_a2d_cb_param_t ;
typedef int esp_a2d_cb_event_t ;


 int BTC_PID_A2DP ;
 int btc_profile_cb_get (int ) ;

__attribute__((used)) static inline void btc_a2d_cb_to_app(esp_a2d_cb_event_t event, esp_a2d_cb_param_t *param)
{
    esp_a2d_cb_t btc_aa_cb = (esp_a2d_cb_t)btc_profile_cb_get(BTC_PID_A2DP);
    if (btc_aa_cb) {
        btc_aa_cb(event, param);
    }
}
