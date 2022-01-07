
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tGATT_TCB ;
typedef int UINT16 ;
typedef int BT_HDR ;
typedef int BD_ADDR ;


 int BT_TRANSPORT_LE ;
 scalar_t__ GATT_CH_OPEN ;
 int GATT_TRACE_WARNING (char*,scalar_t__) ;
 int gatt_data_process (int *,int *) ;
 int * gatt_find_tcb_by_addr (int ,int ) ;
 scalar_t__ gatt_get_ch_state (int *) ;
 int osi_free (int *) ;

__attribute__((used)) static void gatt_le_data_ind (UINT16 chan, BD_ADDR bd_addr, BT_HDR *p_buf)
{
    tGATT_TCB *p_tcb;


    if ((p_tcb = gatt_find_tcb_by_addr (bd_addr, BT_TRANSPORT_LE)) != ((void*)0) &&
            gatt_get_ch_state(p_tcb) >= GATT_CH_OPEN) {
        gatt_data_process(p_tcb, p_buf);
    } else {
        osi_free (p_buf);

        if (p_tcb != ((void*)0)) {
            GATT_TRACE_WARNING ("ATT - Ignored L2CAP data while in state: %d\n",
                                gatt_get_ch_state(p_tcb));
        }
    }
}
