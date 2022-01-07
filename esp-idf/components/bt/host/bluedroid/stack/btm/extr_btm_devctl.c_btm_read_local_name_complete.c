
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* tBTM_CMPL_CB ) (scalar_t__*) ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_3__ {int (* p_rln_cmpl_cb ) (scalar_t__*) ;int rln_timer; } ;
struct TYPE_4__ {TYPE_1__ devcb; } ;


 scalar_t__ HCI_SUCCESS ;
 int STREAM_TO_UINT8 (scalar_t__,scalar_t__*) ;
 int UNUSED (int ) ;
 TYPE_2__ btm_cb ;
 int btu_free_timer (int *) ;
 int stub1 (scalar_t__*) ;
 int stub2 (scalar_t__*) ;

void btm_read_local_name_complete (UINT8 *p, UINT16 evt_len)
{
    tBTM_CMPL_CB *p_cb = btm_cb.devcb.p_rln_cmpl_cb;
    UINT8 status;
    UNUSED(evt_len);

    btu_free_timer (&btm_cb.devcb.rln_timer);


    btm_cb.devcb.p_rln_cmpl_cb = ((void*)0);

    if (p_cb) {
        STREAM_TO_UINT8 (status, p);

        if (status == HCI_SUCCESS) {
            (*p_cb)(p);
        } else {
            (*p_cb)(((void*)0));
        }
    }
}
