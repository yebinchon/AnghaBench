
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tSMP_INT_DATA ;
struct TYPE_7__ {scalar_t__ role; int pairing_bda; } ;
typedef TYPE_2__ tSMP_CB ;
struct TYPE_6__ {scalar_t__ skip_update_conn_param; } ;
struct TYPE_8__ {TYPE_1__ ble; } ;
typedef TYPE_3__ tBTM_SEC_DEV_REC ;


 scalar_t__ BTM_ROLE_MASTER ;
 int FALSE ;
 int L2CA_EnableUpdateBleConnParams (int ,int ) ;
 TYPE_3__* btm_find_dev (int ) ;

void smp_fast_conn_param(tSMP_CB *p_cb, tSMP_INT_DATA *p_data)
{
    if(p_cb->role == BTM_ROLE_MASTER) {
        L2CA_EnableUpdateBleConnParams(p_cb->pairing_bda, FALSE);
    }

    else {
        tBTM_SEC_DEV_REC *p_rec = btm_find_dev (p_cb->pairing_bda);
        if(p_rec && p_rec->ble.skip_update_conn_param) {

            return;
        }




        L2CA_EnableUpdateBleConnParams(p_cb->pairing_bda, FALSE);
    }

}
