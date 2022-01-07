
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int g_nu_lookup_count; TYPE_1__* g_nu_lookup; } ;
struct TYPE_3__ {scalar_t__ uuid; char const* name; } ;


 int ESP_LOGD (int ,char*,int ,...) ;
 int TAG ;
 TYPE_2__* protoble_internal ;

__attribute__((used)) static const char *uuid128_to_handler(uint8_t *uuid)
{

    uint8_t *uuid16 = uuid + 12;
    for (int i = 0; i < protoble_internal->g_nu_lookup_count; i++) {
        if (protoble_internal->g_nu_lookup[i].uuid == *(uint16_t *)uuid16 ) {
            ESP_LOGD(TAG, "UUID (0x%x) matched with proto-name = %s", *uuid16, protoble_internal->g_nu_lookup[i].name);
            return protoble_internal->g_nu_lookup[i].name;
        } else {
            ESP_LOGD(TAG, "UUID did not match... %x", *uuid16);
        }
    }
    return ((void*)0);
}
