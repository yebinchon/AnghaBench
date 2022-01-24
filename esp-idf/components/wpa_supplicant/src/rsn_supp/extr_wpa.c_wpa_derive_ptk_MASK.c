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
struct wpa_sm {scalar_t__ pairwise_cipher; int /*<<< orphan*/  key_mgmt; int /*<<< orphan*/  snonce; int /*<<< orphan*/  bssid; int /*<<< orphan*/  own_addr; int /*<<< orphan*/  pmk_len; int /*<<< orphan*/  pmk; } ;
struct wpa_ptk {int dummy; } ;
struct wpa_eapol_key {int /*<<< orphan*/  key_nonce; } ;

/* Variables and functions */
 scalar_t__ WPA_CIPHER_CCMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

int   FUNC2(struct wpa_sm *sm, const unsigned char *src_addr,
              const struct wpa_eapol_key *key,
              struct wpa_ptk *ptk)
{
    size_t ptk_len = sm->pairwise_cipher == WPA_CIPHER_CCMP ? 48 : 64;

    FUNC1(sm->pmk, sm->pmk_len, "Pairwise key expansion",
               sm->own_addr, sm->bssid, sm->snonce, key->key_nonce,
               (u8 *) ptk, ptk_len,
               FUNC0(sm->key_mgmt));
    return 0;
}