#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wps_registrar_config {int /*<<< orphan*/  dualband; int /*<<< orphan*/  static_wep_only; int /*<<< orphan*/  disable_auto_conf; int /*<<< orphan*/  extra_cred_len; scalar_t__ extra_cred; int /*<<< orphan*/  skip_cred_build; int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  enrollee_seen_cb; int /*<<< orphan*/  set_sel_reg_cb; int /*<<< orphan*/  reg_success_cb; int /*<<< orphan*/  pin_needed_cb; int /*<<< orphan*/  set_ie_cb; int /*<<< orphan*/  new_psk_cb; } ;
struct wps_registrar {int sel_reg_dev_password_id_override; int sel_reg_config_methods_override; int /*<<< orphan*/  dualband; int /*<<< orphan*/  static_wep_only; int /*<<< orphan*/  disable_auto_conf; int /*<<< orphan*/ * extra_cred; int /*<<< orphan*/  skip_cred_build; int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  enrollee_seen_cb; int /*<<< orphan*/  set_sel_reg_cb; int /*<<< orphan*/  reg_success_cb; int /*<<< orphan*/  pin_needed_cb; int /*<<< orphan*/  set_ie_cb; int /*<<< orphan*/  new_psk_cb; struct wps_context* wps; int /*<<< orphan*/  nfc_pw_tokens; int /*<<< orphan*/  pins; } ;
struct wps_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wps_registrar*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wps_registrar*) ; 
 scalar_t__ FUNC5 (struct wps_registrar*) ; 

struct wps_registrar * FUNC6(struct wps_context *wps,
		   const struct wps_registrar_config *cfg)
{
	struct wps_registrar *reg = (struct wps_registrar *)FUNC2(sizeof(*reg));
	if (reg == NULL)
		return NULL;
#ifdef CONFIG_WPS_PIN
	dl_list_init(&reg->pins);
#endif
#ifdef CONFIG_WPS_NFC
	dl_list_init(&reg->nfc_pw_tokens);
#endif
	reg->wps = wps;
	reg->new_psk_cb = cfg->new_psk_cb;
	reg->set_ie_cb = cfg->set_ie_cb;
#ifdef CONFIG_WPS_PIN
	reg->pin_needed_cb = cfg->pin_needed_cb;
#endif
	reg->reg_success_cb = cfg->reg_success_cb;
	reg->set_sel_reg_cb = cfg->set_sel_reg_cb;
	reg->enrollee_seen_cb = cfg->enrollee_seen_cb;
	reg->cb_ctx = cfg->cb_ctx;
	reg->skip_cred_build = cfg->skip_cred_build;
	if (cfg->extra_cred) {
		reg->extra_cred = FUNC3(cfg->extra_cred,
						    cfg->extra_cred_len);
		if (reg->extra_cred == NULL) {
			FUNC1(reg);
			return NULL;
		}
	}
	reg->disable_auto_conf = cfg->disable_auto_conf;
	reg->sel_reg_dev_password_id_override = -1;
	reg->sel_reg_config_methods_override = -1;
	reg->static_wep_only = cfg->static_wep_only;
	reg->dualband = cfg->dualband;

	if (FUNC5(reg)) {
		FUNC4(reg);
		return NULL;
	}

	return reg;
}