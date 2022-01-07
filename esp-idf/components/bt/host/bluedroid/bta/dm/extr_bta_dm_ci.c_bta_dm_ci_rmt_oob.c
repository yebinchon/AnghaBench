
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int r; int c; int accept; int bd_addr; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_CI_RMT_OOB ;
typedef int BT_OCTET16 ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BTA_DM_CI_RMT_OOB_EVT ;
 int BT_OCTET16_LEN ;
 int bdcpy (int ,int ) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ osi_malloc (int) ;

void bta_dm_ci_rmt_oob(BOOLEAN accept, BD_ADDR bd_addr, BT_OCTET16 c, BT_OCTET16 r)
{
    tBTA_DM_CI_RMT_OOB *p_msg;

    if ((p_msg = (tBTA_DM_CI_RMT_OOB *) osi_malloc(sizeof(tBTA_DM_CI_RMT_OOB))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_CI_RMT_OOB_EVT;
        bdcpy(p_msg->bd_addr, bd_addr);
        p_msg->accept = accept;
        memcpy(p_msg->c, c, BT_OCTET16_LEN);
        memcpy(p_msg->r, r, BT_OCTET16_LEN);
        bta_sys_sendmsg(p_msg);
    }
}
