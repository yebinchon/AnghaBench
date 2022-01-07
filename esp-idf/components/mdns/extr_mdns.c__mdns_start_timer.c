
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; int dispatch_method; int * arg; int callback; } ;
typedef TYPE_1__ esp_timer_create_args_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_5__ {int timer_handle; } ;


 int ESP_TIMER_TASK ;
 int MDNS_TIMER_PERIOD_US ;
 TYPE_3__* _mdns_server ;
 int _mdns_timer_cb ;
 scalar_t__ esp_timer_create (TYPE_1__*,int *) ;
 scalar_t__ esp_timer_start_periodic (int ,int ) ;

__attribute__((used)) static esp_err_t _mdns_start_timer(void){
    esp_timer_create_args_t timer_conf = {
        .callback = _mdns_timer_cb,
        .arg = ((void*)0),
        .dispatch_method = ESP_TIMER_TASK,
        .name = "mdns_timer"
    };
    esp_err_t err = esp_timer_create(&timer_conf, &(_mdns_server->timer_handle));
    if (err) {
        return err;
    }
    return esp_timer_start_periodic(_mdns_server->timer_handle, MDNS_TIMER_PERIOD_US);
}
