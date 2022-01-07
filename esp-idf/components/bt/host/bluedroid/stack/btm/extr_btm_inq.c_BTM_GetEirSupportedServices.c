
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef int UINT32 ;


 scalar_t__ BTM_EIR_COMPLETE_16BITS_UUID_TYPE ;
 scalar_t__ BTM_EIR_HAS_SERVICE (int *,scalar_t__) ;
 scalar_t__ BTM_EIR_MAX_SERVICES ;
 scalar_t__ BTM_EIR_MORE_16BITS_UUID_TYPE ;
 int * BTM_EIR_UUID_LKUP_TBL ;
 int UINT16_TO_STREAM (scalar_t__*,int ) ;

UINT8 BTM_GetEirSupportedServices( UINT32 *p_eir_uuid, UINT8 **p,
                                   UINT8 max_num_uuid16, UINT8 *p_num_uuid16)
{
    UINT8 service_index;

    *p_num_uuid16 = 0;

    for (service_index = 0; service_index < BTM_EIR_MAX_SERVICES; service_index++) {
        if ( BTM_EIR_HAS_SERVICE( p_eir_uuid, service_index )) {
            if ( *p_num_uuid16 < max_num_uuid16 ) {
                UINT16_TO_STREAM(*p, BTM_EIR_UUID_LKUP_TBL[service_index]);
                (*p_num_uuid16)++;
            }

            else {
                return BTM_EIR_MORE_16BITS_UUID_TYPE;
            }
        }
    }
    return BTM_EIR_COMPLETE_16BITS_UUID_TYPE;
}
