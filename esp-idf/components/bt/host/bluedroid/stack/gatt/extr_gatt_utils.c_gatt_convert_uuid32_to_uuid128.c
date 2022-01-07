
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;


 int LEN_UUID_128 ;
 int UINT32_TO_STREAM (int *,int ) ;
 int base_uuid ;
 int memcpy (int *,int ,int) ;

void gatt_convert_uuid32_to_uuid128(UINT8 uuid_128[LEN_UUID_128], UINT32 uuid_32)
{
    UINT8 *p = &uuid_128[LEN_UUID_128 - 4];

    memcpy (uuid_128, base_uuid, LEN_UUID_128);

    UINT32_TO_STREAM(p, uuid_32);
}
