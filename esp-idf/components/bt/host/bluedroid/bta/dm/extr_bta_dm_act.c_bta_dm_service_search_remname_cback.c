
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_4__ {int length; scalar_t__ status; scalar_t__* remote_bd_name; } ;
typedef TYPE_1__ tBTM_REMOTE_DEV_NAME ;
typedef int tBTM_CMPL_CB ;
struct TYPE_5__ {int peer_bdaddr; } ;
typedef int DEV_CLASS ;
typedef scalar_t__ BD_NAME ;
typedef int BD_ADDR ;


 int APPL_TRACE_DEBUG (char*,...) ;
 int APPL_TRACE_WARNING (char*,scalar_t__) ;
 int BCM_STRNCPY_S (char*,int,char*,int) ;
 int BD_NAME_LEN ;
 scalar_t__ BTM_BUSY ;
 scalar_t__ BTM_CMD_STARTED ;
 scalar_t__ BTM_ReadRemoteDeviceName (int ,int *,int ) ;
 scalar_t__ BTM_SUCCESS ;
 int BT_TRANSPORT_BR_EDR ;
 int UNUSED (int ) ;
 int bdcmp (int ,int ) ;
 int bta_dm_remname_cback (TYPE_1__*) ;
 TYPE_2__ bta_dm_search_cb ;
 int strlen (char*) ;

__attribute__((used)) static void bta_dm_service_search_remname_cback (BD_ADDR bd_addr, DEV_CLASS dc, BD_NAME bd_name)
{
    tBTM_REMOTE_DEV_NAME rem_name;
    tBTM_STATUS btm_status;
    UNUSED(dc);

    APPL_TRACE_DEBUG("bta_dm_service_search_remname_cback name=<%s>", bd_name);


    if (!bdcmp( bta_dm_search_cb.peer_bdaddr, bd_addr)) {
        rem_name.length = strlen((char *)bd_name);
        if (rem_name.length > (BD_NAME_LEN - 1)) {
            rem_name.length = (BD_NAME_LEN - 1);
            rem_name.remote_bd_name[(BD_NAME_LEN - 1)] = 0;
        }
        BCM_STRNCPY_S((char *)rem_name.remote_bd_name, sizeof(BD_NAME), (char *)bd_name, (BD_NAME_LEN - 1));
        rem_name.status = BTM_SUCCESS;

        bta_dm_remname_cback(&rem_name);
    } else {

        btm_status = BTM_ReadRemoteDeviceName (bta_dm_search_cb.peer_bdaddr,
                                               (tBTM_CMPL_CB *) bta_dm_remname_cback,
                                               BT_TRANSPORT_BR_EDR);
        if ( btm_status == BTM_BUSY ) {

            APPL_TRACE_DEBUG("bta_dm_service_search_remname_cback: BTM_ReadRemoteDeviceName is busy");
        } else if ( btm_status != BTM_CMD_STARTED ) {

            APPL_TRACE_WARNING("bta_dm_service_search_remname_cback: BTM_ReadRemoteDeviceName returns 0x%02X", btm_status);

            rem_name.length = 0;
            rem_name.remote_bd_name[0] = 0;
            rem_name.status = btm_status;
            bta_dm_remname_cback(&rem_name);
        }
    }
}
