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
struct wps_registrar {int /*<<< orphan*/  devices; int /*<<< orphan*/  extra_cred; int /*<<< orphan*/  pbc_sessions; int /*<<< orphan*/  nfc_pw_tokens; int /*<<< orphan*/  pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wps_registrar*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct wps_registrar *reg)
{
	if (reg == NULL)
		return;

#ifdef CONFIG_WPS_PIN
	wps_free_pins(&reg->pins);
#endif
#ifdef CONFIG_WPS_NFC
	wps_free_nfc_pw_tokens(&reg->nfc_pw_tokens, 0);
#endif
	FUNC4(reg->pbc_sessions);
	FUNC1(reg->extra_cred);
	FUNC2(reg->devices);
	FUNC0(reg);
}