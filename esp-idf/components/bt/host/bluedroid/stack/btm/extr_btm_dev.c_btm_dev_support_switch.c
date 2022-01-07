
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int** features; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef size_t UINT8 ;
struct TYPE_5__ {scalar_t__ (* supports_master_slave_role_switch ) () ;} ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 size_t BD_FEATURES_LEN ;
 int BTM_TRACE_DEBUG (char*) ;
 scalar_t__ FALSE ;
 size_t HCI_EXT_FEATURES_PAGE_0 ;
 scalar_t__ HCI_SWITCH_SUPPORTED (int*) ;
 scalar_t__ TRUE ;
 TYPE_1__* btm_find_dev (int ) ;
 scalar_t__ btm_is_sco_active_by_bdaddr (int ) ;
 TYPE_2__* controller_get_interface () ;
 scalar_t__ stub1 () ;

BOOLEAN btm_dev_support_switch (BD_ADDR bd_addr)
{
    tBTM_SEC_DEV_REC *p_dev_rec;
    UINT8 xx;
    BOOLEAN feature_empty = TRUE;



    if (btm_is_sco_active_by_bdaddr(bd_addr)) {
        return (FALSE);
    }

    p_dev_rec = btm_find_dev (bd_addr);
    if (p_dev_rec && controller_get_interface()->supports_master_slave_role_switch()) {
        if (HCI_SWITCH_SUPPORTED(p_dev_rec->features[HCI_EXT_FEATURES_PAGE_0])) {
            BTM_TRACE_DEBUG("btm_dev_support_switch return TRUE (feature found)\n");
            return (TRUE);
        }


        for (xx = 0 ; xx < BD_FEATURES_LEN ; xx++) {
            if (p_dev_rec->features[HCI_EXT_FEATURES_PAGE_0][xx] != 0x00) {
                feature_empty = FALSE;
                break;
            }
        }


        if (feature_empty) {
            BTM_TRACE_DEBUG("btm_dev_support_switch return TRUE (feature empty)\n");
            return (TRUE);
        }
    }

    BTM_TRACE_DEBUG("btm_dev_support_switch return FALSE\n");
    return (FALSE);
}
