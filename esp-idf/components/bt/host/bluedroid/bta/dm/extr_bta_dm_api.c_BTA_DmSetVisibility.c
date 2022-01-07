
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_DM_DISC ;
typedef int tBTA_DM_CONN ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {void* conn_paired_only; void* pair_mode; int conn_mode; int disc_mode; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_SET_VISIBILITY ;
typedef void* UINT8 ;


 int BTA_DM_API_SET_VISIBILITY_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmSetVisibility(tBTA_DM_DISC disc_mode, tBTA_DM_CONN conn_mode, UINT8 pairable_mode, UINT8 conn_filter )
{

    tBTA_DM_API_SET_VISIBILITY *p_msg;

    if ((p_msg = (tBTA_DM_API_SET_VISIBILITY *) osi_malloc(sizeof(tBTA_DM_API_SET_VISIBILITY))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_SET_VISIBILITY_EVT;
        p_msg->disc_mode = disc_mode;
        p_msg->conn_mode = conn_mode;
        p_msg->pair_mode = pairable_mode;
        p_msg->conn_paired_only = conn_filter;


        bta_sys_sendmsg(p_msg);
    }


}
