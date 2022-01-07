
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBT_TRANSPORT ;
typedef scalar_t__ tBTM_STATUS ;
typedef int tBTM_CMPL_CB ;
struct TYPE_2__ {int peer_bdaddr; scalar_t__* peer_name; } ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int APPL_TRACE_DEBUG (char*) ;
 int APPL_TRACE_WARNING (char*,scalar_t__) ;
 scalar_t__ BTM_BUSY ;
 scalar_t__ BTM_CMD_STARTED ;
 scalar_t__ BTM_ReadRemoteDeviceName (int ,int *,int ) ;
 int BTM_SecAddRmtNameNotifyCallback (int *) ;
 int FALSE ;
 int TRUE ;
 int bdcpy (int ,int ) ;
 scalar_t__ bta_dm_remname_cback ;
 TYPE_1__ bta_dm_search_cb ;
 int bta_dm_service_search_remname_cback ;

__attribute__((used)) static BOOLEAN bta_dm_read_remote_device_name (BD_ADDR bd_addr, tBT_TRANSPORT transport)
{
    tBTM_STATUS btm_status;

    APPL_TRACE_DEBUG("bta_dm_read_remote_device_name");

    bdcpy(bta_dm_search_cb.peer_bdaddr, bd_addr);
    bta_dm_search_cb.peer_name[0] = 0;

    btm_status = BTM_ReadRemoteDeviceName (bta_dm_search_cb.peer_bdaddr,
                                           (tBTM_CMPL_CB *) bta_dm_remname_cback,
                                           transport);

    if ( btm_status == BTM_CMD_STARTED ) {
        APPL_TRACE_DEBUG("bta_dm_read_remote_device_name: BTM_ReadRemoteDeviceName is started");

        return (TRUE);
    } else if ( btm_status == BTM_BUSY ) {
        APPL_TRACE_DEBUG("bta_dm_read_remote_device_name: BTM_ReadRemoteDeviceName is busy");



        BTM_SecAddRmtNameNotifyCallback(&bta_dm_service_search_remname_cback);

        return (TRUE);
    } else {
        APPL_TRACE_WARNING("bta_dm_read_remote_device_name: BTM_ReadRemoteDeviceName returns 0x%02X", btm_status);

        return (FALSE);
    }
}
