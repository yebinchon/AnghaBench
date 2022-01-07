
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ status; int length; int remote_bd_name; } ;
typedef TYPE_4__ tBTM_REMOTE_DEV_NAME ;
typedef scalar_t__ tBTA_DM_SEC_EVT ;
struct TYPE_10__ {int passkey; } ;
struct TYPE_9__ {scalar_t__* bd_name; int dev_class; int bd_addr; } ;
struct TYPE_8__ {int just_works; scalar_t__* bd_name; int dev_class; int bd_addr; } ;
struct TYPE_12__ {TYPE_3__ key_notif; TYPE_2__ pin_req; TYPE_1__ cfm_req; } ;
typedef TYPE_5__ tBTA_DM_SEC ;
typedef int UINT32 ;
struct TYPE_13__ {scalar_t__ pin_evt; int (* p_sec_cback ) (scalar_t__,TYPE_5__*) ;int num_val; int pin_dev_class; int pin_bd_addr; int just_works; } ;


 int BD_NAME_LEN ;
 int BTA_COPY_DEVICE_CLASS (int ,int ) ;
 scalar_t__ BTA_DM_SP_CFM_REQ_EVT ;
 scalar_t__ BTM_SUCCESS ;
 int bdcpy (int ,int ) ;
 TYPE_7__ bta_dm_cb ;
 int memcpy (scalar_t__*,int ,int) ;
 int stub1 (scalar_t__,TYPE_5__*) ;

__attribute__((used)) static void bta_dm_pinname_cback (void *p_data)
{
    tBTM_REMOTE_DEV_NAME *p_result = (tBTM_REMOTE_DEV_NAME *)p_data;
    tBTA_DM_SEC sec_event;
    UINT32 bytes_to_copy;
    tBTA_DM_SEC_EVT event = bta_dm_cb.pin_evt;

    if (BTA_DM_SP_CFM_REQ_EVT == event) {

        bdcpy(sec_event.cfm_req.bd_addr, bta_dm_cb.pin_bd_addr);
        BTA_COPY_DEVICE_CLASS(sec_event.cfm_req.dev_class, bta_dm_cb.pin_dev_class);

        if (p_result && p_result->status == BTM_SUCCESS) {
            bytes_to_copy = (p_result->length < (BD_NAME_LEN - 1))
                            ? p_result->length : (BD_NAME_LEN - 1);
            memcpy(sec_event.cfm_req.bd_name, p_result->remote_bd_name, bytes_to_copy);
            sec_event.pin_req.bd_name[BD_NAME_LEN - 1] = 0;
        } else {
            sec_event.cfm_req.bd_name[0] = 0;
        }

        sec_event.key_notif.passkey = bta_dm_cb.num_val;


        sec_event.cfm_req.just_works = bta_dm_cb.just_works;
    } else {

        bdcpy(sec_event.pin_req.bd_addr, bta_dm_cb.pin_bd_addr);
        BTA_COPY_DEVICE_CLASS(sec_event.pin_req.dev_class, bta_dm_cb.pin_dev_class);

        if (p_result && p_result->status == BTM_SUCCESS) {
            bytes_to_copy = (p_result->length < (BD_NAME_LEN - 1))
                            ? p_result->length : (BD_NAME_LEN - 1);
            memcpy(sec_event.pin_req.bd_name, p_result->remote_bd_name, bytes_to_copy);
            sec_event.pin_req.bd_name[BD_NAME_LEN - 1] = 0;
        } else {
            sec_event.pin_req.bd_name[0] = 0;
        }

        event = bta_dm_cb.pin_evt;
        sec_event.key_notif.passkey = bta_dm_cb.num_val;
    }

    if ( bta_dm_cb.p_sec_cback ) {
        bta_dm_cb.p_sec_cback(event, &sec_event);
    }
}
