
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT8 ;
typedef scalar_t__ UINT16 ;


 size_t BTM_EIR_MAX_SERVICES ;
 scalar_t__* BTM_EIR_UUID_LKUP_TBL ;

__attribute__((used)) static UINT8 btm_convert_uuid_to_eir_service( UINT16 uuid16 )
{
    UINT8 xx;

    for ( xx = 0; xx < BTM_EIR_MAX_SERVICES; xx++ ) {
        if ( uuid16 == BTM_EIR_UUID_LKUP_TBL[xx]) {
            return xx;
        }
    }
    return BTM_EIR_MAX_SERVICES;
}
