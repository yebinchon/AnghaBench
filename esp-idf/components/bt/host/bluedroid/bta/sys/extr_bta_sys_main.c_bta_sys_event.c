
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT8 ;
struct TYPE_8__ {TYPE_1__** reg; } ;
struct TYPE_7__ {int event; } ;
struct TYPE_6__ {scalar_t__ (* evt_hdlr ) (TYPE_2__*) ;} ;
typedef TYPE_2__ BT_HDR ;
typedef scalar_t__ BOOLEAN ;


 int APPL_TRACE_EVENT (char*,int) ;
 int APPL_TRACE_WARNING (char*,size_t) ;
 size_t BTA_ID_MAX ;
 scalar_t__ TRUE ;
 TYPE_5__ bta_sys_cb ;
 int osi_free (TYPE_2__*) ;
 scalar_t__ stub1 (TYPE_2__*) ;

void bta_sys_event(void * param)
{
    BT_HDR *p_msg = (BT_HDR *)param;

    UINT8 id;
    BOOLEAN freebuf = TRUE;

    APPL_TRACE_EVENT("BTA got event 0x%x\n", p_msg->event);


    id = (UINT8) (p_msg->event >> 8);


    if ((id < BTA_ID_MAX) && (bta_sys_cb.reg[id] != ((void*)0))) {
        freebuf = (*bta_sys_cb.reg[id]->evt_hdlr)(p_msg);
    } else {
        APPL_TRACE_WARNING("BTA got unregistered event id %d\n", id);
    }

    if (freebuf) {
        osi_free(p_msg);
    }

}
