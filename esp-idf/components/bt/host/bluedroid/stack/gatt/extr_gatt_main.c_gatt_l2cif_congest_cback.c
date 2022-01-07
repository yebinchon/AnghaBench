
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tGATT_TCB ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 int gatt_channel_congestion (int *,int ) ;
 int * gatt_find_tcb_by_cid (int ) ;

__attribute__((used)) static void gatt_l2cif_congest_cback (UINT16 lcid, BOOLEAN congested)
{
    tGATT_TCB *p_tcb = gatt_find_tcb_by_cid(lcid);

    if (p_tcb != ((void*)0)) {
        gatt_channel_congestion(p_tcb, congested);
    }

}
