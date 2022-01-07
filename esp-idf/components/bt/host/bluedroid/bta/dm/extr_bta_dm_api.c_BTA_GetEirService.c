
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_SERVICE_MASK ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;


 int BTA_HL_SERVICE_MASK ;
 int BTA_HSP_SERVICE_MASK ;
 scalar_t__ BTA_MAX_SERVICE_ID ;
 int BTM_GetEirUuidList (scalar_t__*,int,scalar_t__*,scalar_t__*,scalar_t__) ;
 int LEN_UUID_16 ;
 scalar_t__ UUID_SERVCLASS_HDP_SINK ;
 scalar_t__ UUID_SERVCLASS_HDP_SOURCE ;
 scalar_t__ UUID_SERVCLASS_HEADSET_HS ;
 scalar_t__* bta_service_id_to_uuid_lkup_tbl ;

void BTA_GetEirService( UINT8 *p_eir, tBTA_SERVICE_MASK *p_services )
{
    UINT8 xx, yy;
    UINT8 num_uuid, max_num_uuid = 32;
    UINT8 uuid_list[32 * LEN_UUID_16];
    UINT16 *p_uuid16 = (UINT16 *)uuid_list;
    tBTA_SERVICE_MASK mask;

    BTM_GetEirUuidList( p_eir, LEN_UUID_16, &num_uuid, uuid_list, max_num_uuid);
    for ( xx = 0; xx < num_uuid; xx++ ) {
        mask = 1;
        for ( yy = 0; yy < BTA_MAX_SERVICE_ID; yy++ ) {
            if ( *(p_uuid16 + xx) == bta_service_id_to_uuid_lkup_tbl[yy] ) {
                *p_services |= mask;
                break;
            }
            mask <<= 1;
        }


        if (*(p_uuid16 + xx) == UUID_SERVCLASS_HEADSET_HS) {
            *p_services |= BTA_HSP_SERVICE_MASK;
        }

        if (*(p_uuid16 + xx) == UUID_SERVCLASS_HDP_SOURCE) {
            *p_services |= BTA_HL_SERVICE_MASK;
        }

        if (*(p_uuid16 + xx) == UUID_SERVCLASS_HDP_SINK) {
            *p_services |= BTA_HL_SERVICE_MASK;
        }
    }
}
