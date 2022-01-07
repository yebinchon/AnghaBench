
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connection_id; } ;
typedef TYPE_1__ tGAP_CCB ;
typedef int UINT16 ;


 int BT_PASS ;
 int FALSE ;
 int GAP_ERR_BAD_HANDLE ;
 scalar_t__ L2CA_SetIdleTimeout (int ,int ,int ) ;
 TYPE_1__* gap_find_ccb_by_handle (int ) ;

UINT16 GAP_ConnSetIdleTimeout (UINT16 gap_handle, UINT16 timeout)
{
    tGAP_CCB *p_ccb;

    if ((p_ccb = gap_find_ccb_by_handle (gap_handle)) == ((void*)0)) {
        return (GAP_ERR_BAD_HANDLE);
    }

    if (L2CA_SetIdleTimeout (p_ccb->connection_id, timeout, FALSE)) {
        return (BT_PASS);
    } else {
        return (GAP_ERR_BAD_HANDLE);
    }
}
