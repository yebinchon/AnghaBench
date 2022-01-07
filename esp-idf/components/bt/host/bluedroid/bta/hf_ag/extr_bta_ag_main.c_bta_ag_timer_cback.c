
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_AG_SCB ;
struct TYPE_5__ {int layer_specific; int event; } ;
struct TYPE_4__ {scalar_t__ param; int event; } ;
typedef TYPE_1__ TIMER_LIST_ENT ;
typedef TYPE_2__ BT_HDR ;


 int bta_ag_scb_to_idx (int *) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

__attribute__((used)) static void bta_ag_timer_cback(void *p)
{
    BT_HDR *p_buf;
    TIMER_LIST_ENT *p_tle = (TIMER_LIST_ENT *) p;

    if ((p_buf = (BT_HDR *) osi_malloc(sizeof(BT_HDR))) != ((void*)0)) {
        p_buf->event = p_tle->event;
        p_buf->layer_specific = bta_ag_scb_to_idx((tBTA_AG_SCB *) p_tle->param);
        bta_sys_sendmsg(p_buf);
    }
}
