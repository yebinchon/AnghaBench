
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tBTM_DEV_STATUS ;
struct TYPE_5__ {int event; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_SYS_HW_MSG ;


 int APPL_TRACE_DEBUG (char*,...) ;
 int BTA_SYS_ERROR_EVT ;
 int BTA_SYS_EVT_STACK_ENABLED_EVT ;
 scalar_t__ BTM_DEV_STATUS_DOWN ;
 scalar_t__ BTM_DEV_STATUS_UP ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int osi_free (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

void bta_sys_hw_btm_cback( tBTM_DEV_STATUS status )
{

    tBTA_SYS_HW_MSG *sys_event;

    APPL_TRACE_DEBUG(" bta_sys_hw_btm_cback was called with parameter: %i" , status );


    if ((sys_event = (tBTA_SYS_HW_MSG *) osi_malloc(sizeof(tBTA_SYS_HW_MSG))) != ((void*)0)) {
        if (status == BTM_DEV_STATUS_UP) {
            sys_event->hdr.event = BTA_SYS_EVT_STACK_ENABLED_EVT;
        } else if (status == BTM_DEV_STATUS_DOWN) {
            sys_event->hdr.event = BTA_SYS_ERROR_EVT;
        } else {

            osi_free (sys_event);
            sys_event = ((void*)0);
        }

        if (sys_event) {
            bta_sys_sendmsg(sys_event);
        }
    } else {
        APPL_TRACE_DEBUG("ERROR bta_sys_hw_btm_cback couldn't send msg" );
    }
}
