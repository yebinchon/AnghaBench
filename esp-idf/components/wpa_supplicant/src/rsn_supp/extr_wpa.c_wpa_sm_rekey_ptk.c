
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wpa_sm_key_request (struct wpa_sm*,int ,int) ;

void wpa_sm_rekey_ptk(void *eloop_ctx, void *timeout_ctx)
{
    struct wpa_sm *sm = eloop_ctx;




    wpa_sm_key_request(sm, 0, 1);
}
