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
typedef  int /*<<< orphan*/  u8 ;
struct wps_data {int /*<<< orphan*/ * dh_pubkey_r; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct wps_data*) ; 

__attribute__((used)) static int FUNC4(struct wps_data *wps, const u8 *pk,
			      size_t pk_len)
{
	if (pk == NULL || pk_len == 0) {
		FUNC0(MSG_DEBUG,  "WPS: No Public Key received");
		return -1;
	}

	FUNC2(wps->dh_pubkey_r);
	wps->dh_pubkey_r = FUNC1(pk, pk_len);
	if (wps->dh_pubkey_r == NULL)
		return -1;

	FUNC0(MSG_DEBUG, "process pubkey start\n");

	if (FUNC3(wps) < 0) {
		return -1;
	}

	FUNC0(MSG_DEBUG, "process pubkey finish\n");

	return 0;
}