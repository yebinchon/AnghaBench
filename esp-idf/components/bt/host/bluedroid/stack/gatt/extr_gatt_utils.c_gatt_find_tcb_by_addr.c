
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tGATT_TCB ;
typedef int tBT_TRANSPORT ;
typedef size_t UINT8 ;
struct TYPE_2__ {int * tcb; } ;
typedef int BD_ADDR ;


 size_t GATT_INDEX_INVALID ;
 TYPE_1__ gatt_cb ;
 size_t gatt_find_i_tcb_by_addr (int ,int ) ;

tGATT_TCB *gatt_find_tcb_by_addr(BD_ADDR bda, tBT_TRANSPORT transport)
{
    tGATT_TCB *p_tcb = ((void*)0);
    UINT8 i = 0;

    if ((i = gatt_find_i_tcb_by_addr(bda, transport)) != GATT_INDEX_INVALID) {
        p_tcb = &gatt_cb.tcb[i];
    }

    return p_tcb;
}
