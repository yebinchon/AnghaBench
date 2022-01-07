
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ con_state; } ;
typedef TYPE_2__ tGAP_CCB ;
typedef size_t UINT16 ;
struct TYPE_5__ {TYPE_2__* ccb_pool; } ;
struct TYPE_7__ {TYPE_1__ conn; } ;


 scalar_t__ GAP_CCB_STATE_IDLE ;
 size_t GAP_MAX_CONNECTIONS ;
 TYPE_4__ gap_cb ;

__attribute__((used)) static tGAP_CCB *gap_find_ccb_by_handle (UINT16 handle)
{
    tGAP_CCB *p_ccb;


    if (handle < GAP_MAX_CONNECTIONS) {
        p_ccb = &gap_cb.conn.ccb_pool[handle];

        if (p_ccb->con_state != GAP_CCB_STATE_IDLE) {
            return (p_ccb);
        }
    }


    return (((void*)0));
}
