
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {TYPE_1__* p_lcb; int remote_cid; } ;
typedef TYPE_2__ tL2C_CCB ;
struct TYPE_4__ {int handle; } ;


 TYPE_2__* l2cu_find_ccb_by_cid (int *,int ) ;

bool L2CA_GetIdentifiers(uint16_t lcid, uint16_t *rcid, uint16_t *handle)
{
    tL2C_CCB *control_block = l2cu_find_ccb_by_cid(((void*)0), lcid);
    if (!control_block) {
        return 0;
    }

    if (rcid) {
        *rcid = control_block->remote_cid;
    }
    if (handle) {
        *handle = control_block->p_lcb->handle;
    }

    return 1;
}
