
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int tBTA_UPDATE_DUPLICATE_EXCEPTIONAL_LIST_CMPL_CBACK ;
typedef int BD_ADDR ;


 int BTA_DmUpdateDuplicateExceptionalList (int ,int ,int ,int ) ;

__attribute__((used)) static void btc_ble_update_duplicate_exceptional_list(uint8_t subcode, uint32_t info_type, BD_ADDR device_info,
                                 tBTA_UPDATE_DUPLICATE_EXCEPTIONAL_LIST_CMPL_CBACK p_update_duplicate_ignore_list_cback)
{
    BTA_DmUpdateDuplicateExceptionalList(subcode, info_type, device_info, p_update_duplicate_ignore_list_cback);
}
