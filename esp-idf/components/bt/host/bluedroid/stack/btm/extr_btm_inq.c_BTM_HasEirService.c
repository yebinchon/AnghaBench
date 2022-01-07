
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 int BTM_EIR_HAS_SERVICE (int *,scalar_t__) ;
 scalar_t__ BTM_EIR_MAX_SERVICES ;
 int FALSE ;
 scalar_t__ btm_convert_uuid_to_eir_service (int ) ;

BOOLEAN BTM_HasEirService( UINT32 *p_eir_uuid, UINT16 uuid16 )
{
    UINT8 service_id;

    service_id = btm_convert_uuid_to_eir_service(uuid16);
    if ( service_id < BTM_EIR_MAX_SERVICES ) {
        return ( BTM_EIR_HAS_SERVICE( p_eir_uuid, service_id ));
    } else {
        return ( FALSE );
    }
}
