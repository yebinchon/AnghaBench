
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int ssl_ctx; } ;


 int MSG_DEBUG ;
 int * STAILQ_FIRST (int *) ;
 int eap_deinit_prev_method (struct eap_sm*,char*) ;
 int eap_peer_blob_deinit (struct eap_sm*) ;
 int eap_peer_config_deinit (struct eap_sm*) ;
 int eap_sm_abort (struct eap_sm*) ;
 struct eap_sm* gEapSm ;
 int os_free (struct eap_sm*) ;
 int * s_wifi_wpa2_sync_sem ;
 int * s_wpa2_data_lock ;
 int s_wpa2_rxq ;
 int tls_deinit (int ) ;
 int vSemaphoreDelete (int *) ;
 int wpa2_rxq_deinit () ;
 int wpa2_task_delete (int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_peer_sm_deinit(void)
{
    struct eap_sm *sm = gEapSm;

    if (sm == ((void*)0)) {
        return;
    }

    eap_peer_config_deinit(sm);
    eap_peer_blob_deinit(sm);
    eap_deinit_prev_method(sm, "EAP deinit");
    eap_sm_abort(sm);
    tls_deinit(sm->ssl_ctx);




    if (STAILQ_FIRST((&s_wpa2_rxq)) != ((void*)0)) {
        wpa2_rxq_deinit();
    }

    if (s_wifi_wpa2_sync_sem) {
        vSemaphoreDelete(s_wifi_wpa2_sync_sem);
    }
    s_wifi_wpa2_sync_sem = ((void*)0);

    if (s_wpa2_data_lock) {
        vSemaphoreDelete(s_wpa2_data_lock);
        s_wpa2_data_lock = ((void*)0);
        wpa_printf(MSG_DEBUG, "wpa2 eap_peer_sm_deinit: free data lock");
    }

    os_free(sm);
    gEapSm = ((void*)0);
}
