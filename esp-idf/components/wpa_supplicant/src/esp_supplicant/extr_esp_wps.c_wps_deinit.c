
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wps_data {struct wps_data* nfc_pw_token; int peer_dev; int dh_ctx; struct wps_data* dev_password; int * last_msg; int * dh_pubkey_r; int * dh_pubkey_e; int * dh_privkey; scalar_t__ registrar; scalar_t__ wps_pin_revealed; TYPE_1__* wps; } ;
struct TYPE_4__ {struct wps_data* wps; } ;
struct TYPE_3__ {int registrar; } ;


 int MSG_DEBUG ;
 int dh5_free (int ) ;
 TYPE_2__* gWpsSm ;
 int os_free (struct wps_data*) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (int *) ;
 int wps_dev_deinit (int *) ;
 int wps_registrar_remove_nfc_pw_token (int ,struct wps_data*) ;

void wps_deinit(void)
{
    struct wps_data *data = gWpsSm->wps;







    if (data->wps_pin_revealed) {
        wpa_printf(MSG_DEBUG, "WPS: Full PIN information revealed and "
                   "negotiation failed");
    } else if (data->registrar)
        wpa_printf(MSG_DEBUG, "WPS: register information revealed and "
                   "negotiation failed");
    wpabuf_free(data->dh_privkey);
    wpabuf_free(data->dh_pubkey_e);
    wpabuf_free(data->dh_pubkey_r);
    wpabuf_free(data->last_msg);
    os_free(data->dev_password);
    dh5_free(data->dh_ctx);
    wps_dev_deinit(&data->peer_dev);



    os_free(data);
}
