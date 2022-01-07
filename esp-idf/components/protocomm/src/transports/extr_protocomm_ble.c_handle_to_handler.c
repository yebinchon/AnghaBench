
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int g_nu_lookup_count; TYPE_1__* g_nu_lookup; } ;
struct TYPE_3__ {char const* name; int const* uuid128; } ;


 TYPE_2__* protoble_internal ;
 int * simple_ble_get_uuid128 (int ) ;
 scalar_t__* uuid128_to_16 (int const*) ;

__attribute__((used)) static const char *handle_to_handler(uint16_t handle)
{
    const uint8_t *uuid128 = simple_ble_get_uuid128(handle);
    if (!uuid128) {
        return ((void*)0);
    }
    for (int i = 0; i < protoble_internal->g_nu_lookup_count; i++) {
        if (*uuid128_to_16(protoble_internal->g_nu_lookup[i].uuid128) == *uuid128_to_16(uuid128)) {
            return protoble_internal->g_nu_lookup[i].name;
        }
    }
    return ((void*)0);
}
