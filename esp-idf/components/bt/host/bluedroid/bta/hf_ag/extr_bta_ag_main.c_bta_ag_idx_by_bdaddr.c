
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int peer_addr; scalar_t__ in_use; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef scalar_t__ UINT16 ;
struct TYPE_4__ {TYPE_1__* scb; } ;
typedef int * BD_ADDR ;


 int APPL_TRACE_WARNING (char*) ;
 scalar_t__ BTA_AG_NUM_SCB ;
 int bdcmp (int *,int ) ;
 TYPE_2__ bta_ag_cb ;

UINT16 bta_ag_idx_by_bdaddr(BD_ADDR peer_addr)
{
    tBTA_AG_SCB *p_scb = &bta_ag_cb.scb[0];
    UINT16 i;

    if (peer_addr != ((void*)0)) {
        for (i = 0; i < BTA_AG_NUM_SCB; i++, p_scb++) {
            if (p_scb->in_use && !bdcmp(peer_addr, p_scb->peer_addr)) {
                return (i + 1);
            }
        }
    }

    APPL_TRACE_WARNING("No ag scb for peer addr");
    return 0;
}
