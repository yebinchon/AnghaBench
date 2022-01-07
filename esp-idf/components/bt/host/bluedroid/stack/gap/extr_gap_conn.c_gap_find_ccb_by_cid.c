
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ con_state; scalar_t__ connection_id; } ;
typedef TYPE_2__ tGAP_CCB ;
typedef scalar_t__ UINT16 ;
struct TYPE_5__ {TYPE_2__* ccb_pool; } ;
struct TYPE_7__ {TYPE_1__ conn; } ;


 scalar_t__ GAP_CCB_STATE_IDLE ;
 scalar_t__ GAP_MAX_CONNECTIONS ;
 TYPE_4__ gap_cb ;

__attribute__((used)) static tGAP_CCB *gap_find_ccb_by_cid (UINT16 cid)
{
    UINT16 xx;
    tGAP_CCB *p_ccb;


    for (xx = 0, p_ccb = gap_cb.conn.ccb_pool; xx < GAP_MAX_CONNECTIONS; xx++, p_ccb++) {
        if ((p_ccb->con_state != GAP_CCB_STATE_IDLE) && (p_ccb->connection_id == cid)) {
            return (p_ccb);
        }
    }


    return (((void*)0));
}
