
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * uuid128; int uuid32; int uuid16; } ;
struct TYPE_6__ {scalar_t__ len; TYPE_1__ uu; } ;
typedef TYPE_2__ tBT_UUID ;
typedef int UINT8 ;
typedef int BOOLEAN ;


 int LEN_UUID_128 ;
 scalar_t__ LEN_UUID_16 ;
 scalar_t__ LEN_UUID_32 ;
 int TRUE ;
 int gatt_convert_uuid16_to_uuid128 (int *,int ) ;
 int gatt_convert_uuid32_to_uuid128 (int *,int ) ;
 scalar_t__ memcmp (int *,int *,int) ;

BOOLEAN gatt_uuid_compare (tBT_UUID src, tBT_UUID tar)
{
    UINT8 su[LEN_UUID_128], tu[LEN_UUID_128];
    UINT8 *ps, *pt;


    if (src.len == 0 || tar.len == 0) {
        return TRUE;
    }


    if (src.len == LEN_UUID_16 && tar.len == LEN_UUID_16) {
        return src.uu.uuid16 == tar.uu.uuid16;
    }


    if (src.len == LEN_UUID_32 && tar.len == LEN_UUID_32) {
        return src.uu.uuid32 == tar.uu.uuid32;
    }


    if (src.len == LEN_UUID_16) {

        gatt_convert_uuid16_to_uuid128(su, src.uu.uuid16);
        ps = su;
    } else if (src.len == LEN_UUID_32) {
        gatt_convert_uuid32_to_uuid128(su, src.uu.uuid32);
        ps = su;
    } else {
        ps = src.uu.uuid128;
    }

    if (tar.len == LEN_UUID_16) {

        gatt_convert_uuid16_to_uuid128(tu, tar.uu.uuid16);
        pt = tu;
    } else if (tar.len == LEN_UUID_32) {

        gatt_convert_uuid32_to_uuid128(tu, tar.uu.uuid32);
        pt = tu;
    } else {
        pt = tar.uu.uuid128;
    }

    return (memcmp(ps, pt, LEN_UUID_128) == 0);
}
