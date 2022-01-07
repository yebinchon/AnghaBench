
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tGATT_TCB ;
typedef int UINT16 ;
typedef int BT_HDR ;


 scalar_t__ GATT_CH_OPEN ;
 int gatt_data_process (int *,int *) ;
 int * gatt_find_tcb_by_cid (int ) ;
 scalar_t__ gatt_get_ch_state (int *) ;
 int osi_free (int *) ;

__attribute__((used)) static void gatt_l2cif_data_ind_cback(UINT16 lcid, BT_HDR *p_buf)
{
    tGATT_TCB *p_tcb;


    if ((p_tcb = gatt_find_tcb_by_cid(lcid)) != ((void*)0) &&
            gatt_get_ch_state(p_tcb) == GATT_CH_OPEN) {

        gatt_data_process(p_tcb, p_buf);
    } else {
        osi_free(p_buf);
    }

}
