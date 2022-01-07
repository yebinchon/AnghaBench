
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ arg_size; void* arg; int fn; } ;
typedef TYPE_1__ wifi_ipc_config_t ;


 int esp_wifi_ipc_internal (TYPE_1__*,int) ;
 int hostap_eapol_resend_process ;

void resend_eapol_handle(void *timeout_ctx)
{
    wifi_ipc_config_t cfg;

    cfg.fn = hostap_eapol_resend_process;
    cfg.arg = timeout_ctx;
    cfg.arg_size = 0;
    esp_wifi_ipc_internal(&cfg, 0);
}
