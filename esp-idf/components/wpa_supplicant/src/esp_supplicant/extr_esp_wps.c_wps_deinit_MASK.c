#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wps_data {struct wps_data* nfc_pw_token; int /*<<< orphan*/  peer_dev; int /*<<< orphan*/  dh_ctx; struct wps_data* dev_password; int /*<<< orphan*/ * last_msg; int /*<<< orphan*/ * dh_pubkey_r; int /*<<< orphan*/ * dh_pubkey_e; int /*<<< orphan*/ * dh_privkey; scalar_t__ registrar; scalar_t__ wps_pin_revealed; TYPE_1__* wps; } ;
struct TYPE_4__ {struct wps_data* wps; } ;
struct TYPE_3__ {int /*<<< orphan*/  registrar; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* gWpsSm ; 
 int /*<<< orphan*/  FUNC1 (struct wps_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct wps_data*) ; 

void FUNC6(void)
{
    struct wps_data *data = gWpsSm->wps;

#ifdef CONFIG_WPS_NFC
    if (data->registrar && data->nfc_pw_token)
        wps_registrar_remove_nfc_pw_token(data->wps->registrar,
                                          data->nfc_pw_token);
#endif /* CONFIG_WPS_NFC */

    if (data->wps_pin_revealed) {
        FUNC2(MSG_DEBUG,  "WPS: Full PIN information revealed and "
                   "negotiation failed");
    } else if (data->registrar)
        FUNC2(MSG_DEBUG,  "WPS: register information revealed and "
                   "negotiation failed");
    FUNC3(data->dh_privkey);

#ifdef DESP32_WORKAROUND
    /*
     * due to the public key calculated when wps start, it will not calculate anymore even when we build M1 message, also calculate the key need take a long time
     * which would cause WPS fail, so we clean the key after WPS finished .
     */
    data->dh_privkey = NULL;
#endif //DESP32_WORKAROUND

    FUNC3(data->dh_pubkey_e);
    FUNC3(data->dh_pubkey_r);
    FUNC3(data->last_msg);
    FUNC1(data->dev_password);
    FUNC0(data->dh_ctx);
    FUNC4(&data->peer_dev);
#ifdef CONFIG_WPS_NFC
    os_free(data->nfc_pw_token);
#endif
    FUNC1(data);
}