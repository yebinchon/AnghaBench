
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int uuid32; int * uuid128; int uuid16; } ;
struct TYPE_5__ {scalar_t__ len; TYPE_1__ uu; } ;
typedef TYPE_2__ tBT_UUID ;
typedef int UINT8 ;
typedef int UINT16 ;


 int LEN_UUID_128 ;
 scalar_t__ LEN_UUID_16 ;
 int STREAM_TO_UINT16 (int ,int *) ;

uint16_t get_uuid16(tBT_UUID *p_uuid)
{
    if (p_uuid->len == LEN_UUID_16) {
        return p_uuid->uu.uuid16;
    } else if (p_uuid->len == LEN_UUID_128) {
        UINT16 u16;
        UINT8 *p = &p_uuid->uu.uuid128[LEN_UUID_128 - 4];
        STREAM_TO_UINT16(u16, p);
        return u16;
    } else {
        return (UINT16) p_uuid->uu.uuid32;
    }
}
