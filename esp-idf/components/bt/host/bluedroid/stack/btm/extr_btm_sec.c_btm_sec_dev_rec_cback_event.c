
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pseudo_addr; } ;
struct TYPE_5__ {int p_ref_data; int bd_addr; TYPE_1__ ble; int (* p_callback ) (int ,int ,int ,int ) ;} ;
typedef TYPE_2__ tBTM_SEC_DEV_REC ;
typedef int (* tBTM_SEC_CALLBACK ) (int ,int ,int ,int ) ;
typedef int UINT8 ;
typedef scalar_t__ BOOLEAN ;


 int BT_TRANSPORT_BR_EDR ;
 int BT_TRANSPORT_LE ;
 int btm_sec_check_pending_reqs () ;
 int stub1 (int ,int ,int ,int ) ;
 int stub2 (int ,int ,int ,int ) ;

void btm_sec_dev_rec_cback_event (tBTM_SEC_DEV_REC *p_dev_rec, UINT8 res, BOOLEAN is_le_transport)
{
    tBTM_SEC_CALLBACK *p_callback = p_dev_rec->p_callback;

    if (p_dev_rec->p_callback) {
        p_dev_rec->p_callback = ((void*)0);


        if (is_le_transport) {
            (*p_callback) (p_dev_rec->ble.pseudo_addr, BT_TRANSPORT_LE, p_dev_rec->p_ref_data, res);
        } else

        {
            (*p_callback) (p_dev_rec->bd_addr, BT_TRANSPORT_BR_EDR, p_dev_rec->p_ref_data, res);
        }
    }

    btm_sec_check_pending_reqs();

}
