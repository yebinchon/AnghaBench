
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_9__ {int success; int fail_reason; scalar_t__* bd_name; int bd_addr; } ;
struct TYPE_11__ {TYPE_1__ auth_cmpl; } ;
typedef TYPE_3__ tBTA_DM_SEC ;
struct TYPE_10__ {scalar_t__ transport; int bd_addr; } ;
struct TYPE_12__ {TYPE_2__ bond; } ;
typedef TYPE_4__ tBTA_DM_MSG ;
struct TYPE_13__ {int (* p_sec_cback ) (int ,TYPE_3__*) ;} ;


 int BD_NAME_LEN ;
 int BTA_DM_AUTH_CMPL_EVT ;
 scalar_t__ BTA_TRANSPORT_UNKNOWN ;
 scalar_t__ BTM_CMD_STARTED ;
 scalar_t__ BTM_SUCCESS ;
 scalar_t__ BTM_SecBond (int ,int ,int *,int ) ;
 scalar_t__ BTM_SecBondByTransport (int ,scalar_t__,int ,int *,int ) ;
 char* BTM_SecReadDevName (int ) ;
 int HCI_ERR_ILLEGAL_COMMAND ;
 int TRUE ;
 int bdcpy (int ,int ) ;
 TYPE_7__ bta_dm_cb ;
 int bta_dm_remove_sec_dev_entry (int ) ;
 int memcpy (scalar_t__*,char*,int) ;
 int memset (TYPE_3__*,int ,int) ;
 int stub1 (int ,TYPE_3__*) ;

void bta_dm_bond (tBTA_DM_MSG *p_data)
{
    tBTM_STATUS status;
    tBTA_DM_SEC sec_event;
    char *p_name;

    if (p_data->bond.transport == BTA_TRANSPORT_UNKNOWN) {
        status = BTM_SecBond ( p_data->bond.bd_addr, 0, ((void*)0), 0 );
    } else {
        status = BTM_SecBondByTransport ( p_data->bond.bd_addr, p_data->bond.transport, 0, ((void*)0), 0 );
    }


    if (bta_dm_cb.p_sec_cback && (status != BTM_CMD_STARTED)) {

        memset(&sec_event, 0, sizeof(tBTA_DM_SEC));
        bdcpy(sec_event.auth_cmpl.bd_addr, p_data->bond.bd_addr);
        p_name = BTM_SecReadDevName(p_data->bond.bd_addr);
        if (p_name != ((void*)0)) {
            memcpy(sec_event.auth_cmpl.bd_name, p_name, (BD_NAME_LEN - 1));
            sec_event.auth_cmpl.bd_name[BD_NAME_LEN - 1] = 0;
        }





        sec_event.auth_cmpl.fail_reason = HCI_ERR_ILLEGAL_COMMAND;
        if (status == BTM_SUCCESS) {
            sec_event.auth_cmpl.success = TRUE;
        } else {

            bta_dm_remove_sec_dev_entry(p_data->bond.bd_addr);
        }
        bta_dm_cb.p_sec_cback(BTA_DM_AUTH_CMPL_EVT, &sec_event);
    }

}
