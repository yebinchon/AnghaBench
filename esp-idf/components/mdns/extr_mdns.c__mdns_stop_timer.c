
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ esp_err_t ;
struct TYPE_2__ {scalar_t__ timer_handle; } ;


 scalar_t__ ESP_OK ;
 TYPE_1__* _mdns_server ;
 scalar_t__ esp_timer_delete (scalar_t__) ;
 scalar_t__ esp_timer_stop (scalar_t__) ;

__attribute__((used)) static esp_err_t _mdns_stop_timer(void){
    esp_err_t err = ESP_OK;
    if (_mdns_server->timer_handle) {
        err = esp_timer_stop(_mdns_server->timer_handle);
        if (err) {
            return err;
        }
        err = esp_timer_delete(_mdns_server->timer_handle);
    }
    return err;
}
