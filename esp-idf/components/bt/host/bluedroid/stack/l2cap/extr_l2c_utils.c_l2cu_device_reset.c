
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ handle; scalar_t__ in_use; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef int UINT8 ;
struct TYPE_4__ {int is_ble_connecting; TYPE_1__* lcb_pool; } ;


 int FALSE ;
 scalar_t__ HCI_INVALID_HANDLE ;
 int MAX_L2CAP_LINKS ;
 int l2c_link_hci_disc_comp (scalar_t__,int ) ;
 TYPE_2__ l2cb ;

void l2cu_device_reset (void)
{
    int xx;
    tL2C_LCB *p_lcb = &l2cb.lcb_pool[0];

    for (xx = 0; xx < MAX_L2CAP_LINKS; xx++, p_lcb++) {
        if ((p_lcb->in_use) && (p_lcb->handle != HCI_INVALID_HANDLE)) {
            l2c_link_hci_disc_comp (p_lcb->handle, (UINT8) - 1);
        }
    }

    l2cb.is_ble_connecting = FALSE;

}
