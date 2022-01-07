
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uuid128; int uuid32; int uuid16; } ;
struct TYPE_5__ {scalar_t__ len; TYPE_1__ uu; } ;
typedef TYPE_2__ tBT_UUID ;
typedef scalar_t__ UINT8 ;


 int ARRAY_TO_STREAM (scalar_t__*,int ,scalar_t__) ;
 scalar_t__ LEN_UUID_128 ;
 scalar_t__ LEN_UUID_16 ;
 scalar_t__ LEN_UUID_32 ;
 int UINT16_TO_STREAM (scalar_t__*,int ) ;
 int gatt_convert_uuid32_to_uuid128 (scalar_t__*,int ) ;

UINT8 gatt_build_uuid_to_stream(UINT8 **p_dst, tBT_UUID uuid)
{
    UINT8 *p = *p_dst;
    UINT8 len = 0;

    if (uuid.len == LEN_UUID_16) {
        UINT16_TO_STREAM (p, uuid.uu.uuid16);
        len = LEN_UUID_16;
    } else if (uuid.len == LEN_UUID_32) {
        gatt_convert_uuid32_to_uuid128(p, uuid.uu.uuid32);
        p += LEN_UUID_128;
        len = LEN_UUID_128;
    } else if (uuid.len == LEN_UUID_128) {
        ARRAY_TO_STREAM (p, uuid.uu.uuid128, LEN_UUID_128);
        len = LEN_UUID_128;
    }

    *p_dst = p;
    return len;
}
