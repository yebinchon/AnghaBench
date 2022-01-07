
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A2D_Deinit () ;
 int AVRC_Deinit () ;
 int GAP_Deinit () ;
 int RFCOMM_Deinit () ;
 int * avct_cb_ptr ;
 int * avdt_cb_ptr ;
 int * bta_ar_cb_ptr ;
 int * bta_av_cb_ptr ;
 int * bta_av_sbc_ups_cb_ptr ;
 int * bta_dm_cb_ptr ;
 int * bta_dm_conn_srvcs_ptr ;
 int * bta_dm_di_cb_ptr ;
 int * bta_dm_search_cb_ptr ;
 int * bta_gattc_cb_ptr ;
 int * bta_gatts_cb_ptr ;
 int * bta_hf_client_cb_ptr ;
 int * bta_hh_cb_ptr ;
 int * bta_jv_cb_ptr ;
 int * bta_sdp_cb_ptr ;
 int * bta_sys_cb_ptr ;
 int * g_disc_raw_data_buf ;
 int osi_free (int *) ;

void BTE_DeinitStack(void)
{



    if (bta_gatts_cb_ptr){
        osi_free(bta_gatts_cb_ptr);
        bta_gatts_cb_ptr = ((void*)0);
    }


    if (bta_gattc_cb_ptr){
        osi_free(bta_gattc_cb_ptr);
        bta_gattc_cb_ptr = ((void*)0);
    }


    if (bta_hh_cb_ptr){
        osi_free(bta_hh_cb_ptr);
        bta_hh_cb_ptr = ((void*)0);
    }


    if (bta_av_cb_ptr){
        osi_free(bta_av_cb_ptr);
        bta_av_cb_ptr = ((void*)0);
    }
    if (bta_av_sbc_ups_cb_ptr){
        osi_free(bta_av_sbc_ups_cb_ptr);
        bta_av_sbc_ups_cb_ptr = ((void*)0);
    }


    if (bta_ar_cb_ptr){
        osi_free(bta_ar_cb_ptr);
        bta_ar_cb_ptr = ((void*)0);
    }


    if (g_disc_raw_data_buf){
        osi_free(g_disc_raw_data_buf);
        g_disc_raw_data_buf = ((void*)0);
    }


    if (bta_sdp_cb_ptr){
        osi_free(bta_sdp_cb_ptr);
        bta_sdp_cb_ptr = ((void*)0);
    }
    if (bta_dm_conn_srvcs_ptr){
        osi_free(bta_dm_conn_srvcs_ptr);
        bta_dm_conn_srvcs_ptr = ((void*)0);
    }
    if (bta_dm_di_cb_ptr){
        osi_free(bta_dm_di_cb_ptr);
        bta_dm_di_cb_ptr = ((void*)0);
    }
    if (bta_dm_search_cb_ptr){
        osi_free(bta_dm_search_cb_ptr);
        bta_dm_search_cb_ptr = ((void*)0);
    }
    if (bta_dm_cb_ptr){
        osi_free(bta_dm_cb_ptr);
        bta_dm_cb_ptr = ((void*)0);
    }
    if (bta_sys_cb_ptr){
        osi_free(bta_sys_cb_ptr);
        bta_sys_cb_ptr = ((void*)0);
    }
}
