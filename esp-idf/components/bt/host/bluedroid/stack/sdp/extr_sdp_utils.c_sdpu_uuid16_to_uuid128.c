
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int UINT8 ;
typedef int UINT16 ;


 int MAX_UUID_SIZE ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int ntohs (int ) ;
 int * sdp_base_uuid ;

void sdpu_uuid16_to_uuid128(UINT16 uuid16, UINT8 *p_uuid128)
{
    UINT16 uuid16_bo;
    memset(p_uuid128, 0, 16);

    memcpy(p_uuid128, sdp_base_uuid, MAX_UUID_SIZE);
    uuid16_bo = ntohs(uuid16);
    memcpy(p_uuid128 + 2, &uuid16_bo, sizeof(uint16_t));
}
