
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tGATT_TCB ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BT_TRANSPORT_LE ;
 int gatt_channel_congestion (int *,int ) ;
 int * gatt_find_tcb_by_addr (int ,int ) ;

__attribute__((used)) static void gatt_le_cong_cback(BD_ADDR remote_bda, BOOLEAN congested)
{
    tGATT_TCB *p_tcb = gatt_find_tcb_by_addr(remote_bda, BT_TRANSPORT_LE);


    if (p_tcb != ((void*)0)) {
        gatt_channel_congestion(p_tcb, congested);
    }
}
