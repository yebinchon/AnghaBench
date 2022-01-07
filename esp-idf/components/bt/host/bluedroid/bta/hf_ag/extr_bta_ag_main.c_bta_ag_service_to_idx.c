
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_SERVICE_MASK ;
typedef int UINT8 ;


 int BTA_AG_HFP ;
 int BTA_AG_HSP ;
 int BTA_HFP_SERVICE_MASK ;

UINT8 bta_ag_service_to_idx(tBTA_SERVICE_MASK services)
{
    if (services & BTA_HFP_SERVICE_MASK) {
        return BTA_AG_HFP;
    } else {
        return BTA_AG_HSP;
    }
}
