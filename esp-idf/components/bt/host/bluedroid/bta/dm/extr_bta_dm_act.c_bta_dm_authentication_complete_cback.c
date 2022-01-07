
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fail_reason; int addr_type; int dev_type; scalar_t__* bd_name; int bd_addr; } ;
struct TYPE_7__ {TYPE_1__ auth_cmpl; } ;
typedef TYPE_2__ tBTA_DM_SEC ;
typedef int UINT8 ;
struct TYPE_8__ {int (* p_sec_cback ) (int ,TYPE_2__*) ;} ;
typedef int DEV_CLASS ;
typedef int BD_NAME ;
typedef int BD_ADDR ;


 int BD_NAME_LEN ;
 int BTA_DM_AUTH_CMPL_EVT ;
 int BTM_ReadDevInfo (int ,int *,int *) ;
 int BTM_SUCCESS ;
 int UNUSED (int ) ;
 int bdcpy (int ,int ) ;
 TYPE_5__ bta_dm_cb ;
 int bta_dm_remove_sec_dev_entry (int ) ;
 int memcpy (scalar_t__*,int ,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int stub1 (int ,TYPE_2__*) ;

__attribute__((used)) static UINT8 bta_dm_authentication_complete_cback(BD_ADDR bd_addr, DEV_CLASS dev_class, BD_NAME bd_name, int result)
{
    tBTA_DM_SEC sec_event;
    UNUSED(dev_class);

    if (result != BTM_SUCCESS) {
        memset(&sec_event, 0, sizeof(tBTA_DM_SEC));
        bdcpy(sec_event.auth_cmpl.bd_addr, bd_addr);

        memcpy(sec_event.auth_cmpl.bd_name, bd_name, (BD_NAME_LEN - 1));
        sec_event.auth_cmpl.bd_name[BD_NAME_LEN - 1] = 0;



        BTM_ReadDevInfo(bd_addr, &sec_event.auth_cmpl.dev_type, &sec_event.auth_cmpl.addr_type);

        sec_event.auth_cmpl.fail_reason = (UINT8)result;

        if (bta_dm_cb.p_sec_cback) {
            bta_dm_cb.p_sec_cback(BTA_DM_AUTH_CMPL_EVT, &sec_event);
        }

        bta_dm_remove_sec_dev_entry(bd_addr);
    }

    return BTM_SUCCESS;
}
