
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_sm {scalar_t__ pairwise_cipher; int key_mgmt; int snonce; int bssid; int own_addr; int pmk_len; int pmk; } ;
struct wpa_ptk {int dummy; } ;
struct wpa_eapol_key {int key_nonce; } ;


 scalar_t__ WPA_CIPHER_CCMP ;
 int wpa_key_mgmt_sha256 (int ) ;
 int wpa_pmk_to_ptk (int ,int ,char*,int ,int ,int ,int ,int *,size_t,int ) ;

int wpa_derive_ptk(struct wpa_sm *sm, const unsigned char *src_addr,
              const struct wpa_eapol_key *key,
              struct wpa_ptk *ptk)
{
    size_t ptk_len = sm->pairwise_cipher == WPA_CIPHER_CCMP ? 48 : 64;

    wpa_pmk_to_ptk(sm->pmk, sm->pmk_len, "Pairwise key expansion",
               sm->own_addr, sm->bssid, sm->snonce, key->key_nonce,
               (u8 *) ptk, ptk_len,
               wpa_key_mgmt_sha256(sm->key_mgmt));
    return 0;
}
