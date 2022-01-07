
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ eir_complete_list; int eir_uuid; } ;
typedef TYPE_1__ tBTM_INQ_RESULTS ;
typedef int tBTM_EIR_SEARCH_RESULT ;
typedef int UINT16 ;


 int BTM_EIR_FOUND ;
 int BTM_EIR_NOT_FOUND ;
 int BTM_EIR_UNKNOWN ;
 scalar_t__ BTM_HasEirService (int ,int ) ;

tBTM_EIR_SEARCH_RESULT BTM_HasInquiryEirService( tBTM_INQ_RESULTS *p_results, UINT16 uuid16 )
{
    if ( BTM_HasEirService( p_results->eir_uuid, uuid16 )) {
        return BTM_EIR_FOUND;
    } else if ( p_results->eir_complete_list ) {
        return BTM_EIR_NOT_FOUND;
    } else {
        return BTM_EIR_UNKNOWN;
    }
}
