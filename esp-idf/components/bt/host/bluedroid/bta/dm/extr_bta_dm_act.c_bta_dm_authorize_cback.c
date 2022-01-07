
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t service; scalar_t__* bd_name; int dev_class; int bd_addr; } ;
struct TYPE_6__ {TYPE_1__ authorize; } ;
typedef TYPE_2__ tBTA_DM_SEC ;
typedef size_t UINT8 ;
struct TYPE_7__ {int (* p_sec_cback ) (int ,TYPE_2__*) ;} ;
typedef int DEV_CLASS ;
typedef size_t* BOOLEAN ;
typedef scalar_t__ BD_NAME ;
typedef int BD_ADDR ;


 int BCM_STRNCPY_S (char*,int,char*,int) ;
 int BD_NAME_LEN ;
 int BTA_DM_AUTHORIZE_EVT ;
 size_t BTA_FIRST_JV_SERVICE_ID ;
 size_t BTA_LAST_JV_SERVICE_ID ;
 size_t BTA_MAX_SERVICE_ID ;
 size_t BTM_CMD_STARTED ;
 size_t BTM_NOT_AUTHORIZED ;
 int DEV_CLASS_LEN ;
 int UNUSED (size_t*) ;
 int bdcpy (int ,int ) ;
 TYPE_4__ bta_dm_cb ;
 size_t* bta_service_id_to_btm_srv_id_lkup_tbl ;
 int memcpy (int ,int ,int ) ;
 int stub1 (int ,TYPE_2__*) ;

__attribute__((used)) static UINT8 bta_dm_authorize_cback (BD_ADDR bd_addr, DEV_CLASS dev_class, BD_NAME bd_name,
                                     UINT8 *service_name, UINT8 service_id, BOOLEAN is_originator)
{
    tBTA_DM_SEC sec_event;
    UINT8 index = 1;
    UNUSED(service_name);
    UNUSED(is_originator);

    bdcpy(sec_event.authorize.bd_addr, bd_addr);
    memcpy(sec_event.authorize.dev_class, dev_class, DEV_CLASS_LEN);

    BCM_STRNCPY_S((char *)sec_event.authorize.bd_name, sizeof(BD_NAME), (char *)bd_name, (BD_NAME_LEN - 1));


    sec_event.authorize.bd_name[BD_NAME_LEN - 1] = 0;





    while (index < BTA_MAX_SERVICE_ID) {

        if (bta_service_id_to_btm_srv_id_lkup_tbl[index] == service_id) {
            sec_event.authorize.service = index;
            break;
        }
        index++;
    }



    if (bta_dm_cb.p_sec_cback && (index < BTA_MAX_SERVICE_ID




                                 )) {
        bta_dm_cb.p_sec_cback(BTA_DM_AUTHORIZE_EVT, &sec_event);
        return BTM_CMD_STARTED;
    } else {
        return BTM_NOT_AUTHORIZED;
    }
}
