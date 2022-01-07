
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int num_keys; int status; int event; } ;
typedef TYPE_2__ tBTM_DELETE_STORED_LINK_KEY_COMPLETE ;
typedef int (* tBTM_CMPL_CB ) (TYPE_2__*) ;
typedef int UINT8 ;
struct TYPE_6__ {int (* p_stored_link_key_cmpl_cb ) (TYPE_2__*) ;} ;
struct TYPE_8__ {TYPE_1__ devcb; } ;


 int BTM_CB_EVT_DELETE_STORED_LINK_KEYS ;
 int STREAM_TO_UINT16 (int ,int *) ;
 int STREAM_TO_UINT8 (int ,int *) ;
 TYPE_5__ btm_cb ;
 int stub1 (TYPE_2__*) ;

void btm_delete_stored_link_key_complete (UINT8 *p)
{
    tBTM_CMPL_CB *p_cb = btm_cb.devcb.p_stored_link_key_cmpl_cb;
    tBTM_DELETE_STORED_LINK_KEY_COMPLETE result;


    btm_cb.devcb.p_stored_link_key_cmpl_cb = ((void*)0);

    if (p_cb) {

        result.event = BTM_CB_EVT_DELETE_STORED_LINK_KEYS;


        STREAM_TO_UINT8 (result.status, p);
        STREAM_TO_UINT16 (result.num_keys, p);


        (*p_cb)(&result);
    }
}
