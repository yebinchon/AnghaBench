
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hci_handle; scalar_t__ in_use; } ;
typedef TYPE_1__ tACL_CONN ;
typedef scalar_t__ UINT16 ;
struct TYPE_4__ {TYPE_1__* acl_db; } ;


 int BTM_TRACE_DEBUG (char*,...) ;
 int HCI_ERR_HW_FAILURE ;
 scalar_t__ MAX_L2CAP_LINKS ;
 TYPE_2__ btm_cb ;
 int l2c_link_hci_disc_comp (int ,int ) ;

void btm_acl_device_down (void)
{
    tACL_CONN *p = &btm_cb.acl_db[0];
    UINT16 xx;
    BTM_TRACE_DEBUG ("btm_acl_device_down\n");
    for (xx = 0; xx < MAX_L2CAP_LINKS; xx++, p++) {
        if (p->in_use) {
            BTM_TRACE_DEBUG ("hci_handle=%d HCI_ERR_HW_FAILURE \n", p->hci_handle );
            l2c_link_hci_disc_comp (p->hci_handle, HCI_ERR_HW_FAILURE);
        }
    }
}
