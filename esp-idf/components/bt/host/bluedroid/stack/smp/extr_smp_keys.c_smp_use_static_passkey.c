
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * p_data; int key_type; } ;
typedef TYPE_1__ tSMP_KEY ;
typedef int tSMP_INT_DATA ;
typedef int tSMP_EVT_DATA ;
struct TYPE_6__ {scalar_t__ selected_association_model; int pairing_bda; int (* p_callback ) (int ,int ,int *) ;int * tk; int static_passkey; } ;
typedef TYPE_2__ tSMP_CB ;
typedef int UINT8 ;
typedef int UINT32 ;


 int BT_OCTET16_LEN ;
 int SMP_KEY_READY_EVT ;
 int SMP_KEY_TYPE_TK ;
 scalar_t__ SMP_MODEL_SEC_CONN_PASSKEY_DISP ;
 int SMP_PASSKEY_NOTIF_EVT ;
 int UINT32_TO_STREAM (int *,int ) ;
 int memset (int *,int ,int ) ;
 TYPE_2__ smp_cb ;
 int smp_sm_event (TYPE_2__*,int ,int *) ;
 int stub1 (int ,int ,int *) ;

void smp_use_static_passkey(void)
{
    tSMP_CB *p_cb = &smp_cb;
    UINT8 *tt = p_cb->tk;
    tSMP_KEY key;
    UINT32 passkey = p_cb->static_passkey;

    memset(p_cb->tk, 0, BT_OCTET16_LEN);
    UINT32_TO_STREAM(tt, passkey);

    key.key_type = SMP_KEY_TYPE_TK;
    key.p_data = p_cb->tk;

    if (p_cb->p_callback) {
        (*p_cb->p_callback)(SMP_PASSKEY_NOTIF_EVT, p_cb->pairing_bda, (tSMP_EVT_DATA *)&passkey);
    }

    if (p_cb->selected_association_model == SMP_MODEL_SEC_CONN_PASSKEY_DISP) {
        smp_sm_event(&smp_cb, SMP_KEY_READY_EVT, &passkey);
    } else {
        smp_sm_event(p_cb, SMP_KEY_READY_EVT, (tSMP_INT_DATA *)&key);
    }
}
