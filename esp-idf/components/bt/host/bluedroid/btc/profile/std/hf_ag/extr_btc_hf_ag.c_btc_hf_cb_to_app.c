
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* esp_hf_cb_t ) (int ,int *) ;
typedef int esp_hf_cb_param_t ;
typedef int esp_hf_cb_event_t ;


 int BTC_PID_HF ;
 int btc_profile_cb_get (int ) ;

__attribute__((used)) static inline void btc_hf_cb_to_app(esp_hf_cb_event_t event, esp_hf_cb_param_t *param)
{
    esp_hf_cb_t btc_hf_callbacks = (esp_hf_cb_t)btc_profile_cb_get(BTC_PID_HF);
    if (btc_hf_callbacks) {
        btc_hf_callbacks(event, param);
    }
}
