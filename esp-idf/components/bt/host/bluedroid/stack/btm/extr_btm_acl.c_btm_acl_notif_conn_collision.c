
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int handle; int transport; int * p_bda; } ;
struct TYPE_6__ {TYPE_1__ conn; int event; } ;
typedef TYPE_2__ tBTM_BL_EVENT_DATA ;
struct TYPE_7__ {int (* p_bl_changed_cb ) (TYPE_2__*) ;} ;
typedef int BOOLEAN ;
typedef int * BD_ADDR ;


 int BTM_BL_COLLISION_EVT ;
 int BTM_INVALID_HCI_HANDLE ;
 int BTM_TRACE_DEBUG (char*,int ,int ,int ,int ,int ,int ) ;
 int BT_TRANSPORT_BR_EDR ;
 int FALSE ;
 int TRUE ;
 TYPE_4__ btm_cb ;
 int stub1 (TYPE_2__*) ;

BOOLEAN btm_acl_notif_conn_collision (BD_ADDR bda)
{
    tBTM_BL_EVENT_DATA evt_data;


    if (btm_cb.p_bl_changed_cb) {
        BTM_TRACE_DEBUG ("btm_acl_notif_conn_collision: RemBdAddr: %02x%02x%02x%02x%02x%02x\n",
                         bda[0], bda[1], bda[2], bda[3], bda[4], bda[5]);

        evt_data.event = BTM_BL_COLLISION_EVT;
        evt_data.conn.p_bda = bda;


        evt_data.conn.transport = BT_TRANSPORT_BR_EDR;
        evt_data.conn.handle = BTM_INVALID_HCI_HANDLE;

        (*btm_cb.p_bl_changed_cb)(&evt_data);
        return TRUE;
    } else {
        return FALSE;
    }
}
