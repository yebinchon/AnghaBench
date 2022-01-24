#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ esp_err_t ;
struct TYPE_2__ {scalar_t__ timer_handle; } ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 TYPE_1__* _mdns_server ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static esp_err_t FUNC2(void){
    esp_err_t err = ESP_OK;
    if (_mdns_server->timer_handle) {
        err = FUNC1(_mdns_server->timer_handle);
        if (err) {
            return err;
        }
        err = FUNC0(_mdns_server->timer_handle);
    }
    return err;
}