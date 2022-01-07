
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_DM_EXEC_CBACK ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int * p_exec_cback; void* p_param; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_EXECUTE_CBACK ;


 int BTA_DM_API_EXECUTE_CBACK_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

void bta_dmexecutecallback (tBTA_DM_EXEC_CBACK *p_callback, void *p_param)
{
    tBTA_DM_API_EXECUTE_CBACK *p_msg;

    if ((p_msg = (tBTA_DM_API_EXECUTE_CBACK *) osi_malloc(sizeof(tBTA_DM_API_EXECUTE_CBACK))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_EXECUTE_CBACK_EVT;
        p_msg->p_param = p_param;
        p_msg->p_exec_cback = p_callback;
        bta_sys_sendmsg(p_msg);
    }
}
