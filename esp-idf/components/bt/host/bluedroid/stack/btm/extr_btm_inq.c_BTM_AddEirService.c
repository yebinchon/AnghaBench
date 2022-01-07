
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;


 scalar_t__ BTM_EIR_MAX_SERVICES ;
 int BTM_EIR_SET_SERVICE (int *,scalar_t__) ;
 scalar_t__ btm_convert_uuid_to_eir_service (int ) ;

void BTM_AddEirService( UINT32 *p_eir_uuid, UINT16 uuid16 )
{
    UINT8 service_id;

    service_id = btm_convert_uuid_to_eir_service(uuid16);
    if ( service_id < BTM_EIR_MAX_SERVICES ) {
        BTM_EIR_SET_SERVICE( p_eir_uuid, service_id );
    }
}
