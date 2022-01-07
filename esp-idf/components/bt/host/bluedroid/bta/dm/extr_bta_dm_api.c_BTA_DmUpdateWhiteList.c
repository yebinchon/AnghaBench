
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int remote_addr; int * add_wl_cb; int addr_type; int add_remove; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_UPDATE_WHITE_LIST ;
typedef int tBTA_ADD_WHITELIST_CBACK ;
typedef int tBLE_ADDR_TYPE ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BTA_DM_API_UPDATE_WHITE_LIST_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmUpdateWhiteList(BOOLEAN add_remove, BD_ADDR remote_addr, tBLE_ADDR_TYPE addr_type, tBTA_ADD_WHITELIST_CBACK *add_wl_cb)
{
    tBTA_DM_API_UPDATE_WHITE_LIST *p_msg;
    if ((p_msg = (tBTA_DM_API_UPDATE_WHITE_LIST *)osi_malloc(sizeof(tBTA_DM_API_UPDATE_WHITE_LIST))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_UPDATE_WHITE_LIST_EVT;
        p_msg->add_remove = add_remove;
        p_msg->addr_type = addr_type;
        p_msg->add_wl_cb = add_wl_cb;
        memcpy(p_msg->remote_addr, remote_addr, sizeof(BD_ADDR));

        bta_sys_sendmsg(p_msg);
    }
}
