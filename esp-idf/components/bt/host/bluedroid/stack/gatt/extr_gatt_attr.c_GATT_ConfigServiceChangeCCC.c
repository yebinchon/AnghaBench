
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ccc_stage; int connected; int conn_id; } ;
typedef TYPE_1__ tGATT_PROFILE_CLCB ;
typedef int tBT_TRANSPORT ;
struct TYPE_7__ {int gatt_if; } ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BLE_ADDR_UNKNOWN_TYPE ;
 int GATT_Connect (int ,int ,int ,int ,int ) ;
 scalar_t__ GATT_GetConnIdIfConnected (int ,int ,int *,int ) ;
 int GATT_SVC_CHANGED_CONNECTING ;
 int TRUE ;
 TYPE_5__ gatt_cb ;
 int gatt_cl_start_config_ccc (TYPE_1__*) ;
 TYPE_1__* gatt_profile_clcb_alloc (int ,int ,int ) ;
 TYPE_1__* gatt_profile_find_clcb_by_bd_addr (int ,int ) ;

void GATT_ConfigServiceChangeCCC (BD_ADDR remote_bda, BOOLEAN enable, tBT_TRANSPORT transport)
{
    tGATT_PROFILE_CLCB *p_clcb = gatt_profile_find_clcb_by_bd_addr (remote_bda, transport);

    if (p_clcb == ((void*)0)) {
        p_clcb = gatt_profile_clcb_alloc (0, remote_bda, transport);
    }

    if (p_clcb == ((void*)0)) {
        return;
    }

    if (GATT_GetConnIdIfConnected (gatt_cb.gatt_if, remote_bda, &p_clcb->conn_id, transport)) {
        p_clcb->connected = TRUE;
    }

    GATT_Connect(gatt_cb.gatt_if, remote_bda, BLE_ADDR_UNKNOWN_TYPE, TRUE, transport);
    p_clcb->ccc_stage = GATT_SVC_CHANGED_CONNECTING;

    if (!p_clcb->connected) {

        return;
    }

    p_clcb->ccc_stage ++;
    gatt_cl_start_config_ccc(p_clcb);
}
