
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connection_id; } ;
typedef TYPE_1__ tGAP_CCB ;
typedef int UINT16 ;


 TYPE_1__* gap_find_ccb_by_handle (int ) ;

UINT16 GAP_ConnGetL2CAPCid (UINT16 gap_handle)
{
    tGAP_CCB *p_ccb;

    if ((p_ccb = gap_find_ccb_by_handle (gap_handle)) == ((void*)0)) {
        return (0);
    }

    return (p_ccb->connection_id);
}
