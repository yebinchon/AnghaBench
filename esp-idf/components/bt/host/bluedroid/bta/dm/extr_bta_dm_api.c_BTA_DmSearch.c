
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTA_SERVICE_MASK ;
typedef int tBTA_DM_SEARCH_CBACK ;
typedef int tBTA_DM_INQ ;
struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int rs_res; int * p_cback; int services; int inq_params; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_SEARCH ;


 int BTA_DM_API_SEARCH_EVT ;
 int BTA_DM_RS_NONE ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmSearch(tBTA_DM_INQ *p_dm_inq, tBTA_SERVICE_MASK services, tBTA_DM_SEARCH_CBACK *p_cback)
{

    tBTA_DM_API_SEARCH *p_msg;

    if ((p_msg = (tBTA_DM_API_SEARCH *) osi_malloc(sizeof(tBTA_DM_API_SEARCH))) != ((void*)0)) {
        memset(p_msg, 0, sizeof(tBTA_DM_API_SEARCH));

        p_msg->hdr.event = BTA_DM_API_SEARCH_EVT;
        memcpy(&p_msg->inq_params, p_dm_inq, sizeof(tBTA_DM_INQ));
        p_msg->services = services;
        p_msg->p_cback = p_cback;
        p_msg->rs_res = BTA_DM_RS_NONE;
        bta_sys_sendmsg(p_msg);
    }

}
