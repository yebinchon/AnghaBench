
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int * emsk; int * keywrapkey; int * authkey; int * nonce_r; int * mac_addr_e; int * nonce_e; struct wpabuf* dh_privkey; int * dh_ctx; struct wpabuf* dh_pubkey_r; struct wpabuf* dh_pubkey_e; scalar_t__ registrar; } ;
struct wpabuf {int dummy; } ;
typedef int keys ;
typedef int kdk ;
typedef int dhkey ;


 size_t ETH_ALEN ;
 int MSG_DEBUG ;
 int SHA256_MAC_LEN ;
 int WPS_AUTHKEY_LEN ;
 int WPS_EMSK_LEN ;
 int WPS_KEYWRAPKEY_LEN ;
 size_t WPS_NONCE_LEN ;
 struct wpabuf* dh5_derive_shared (int *,struct wpabuf*,struct wpabuf*) ;
 int dh5_free (int *) ;
 int hmac_sha256_vector (int *,int,int,int const**,size_t*,int *) ;
 int os_memcpy (int *,int *,int) ;
 int sha256_vector (int,int const**,size_t*,int *) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_hexdump_buf_key (int ,char*,struct wpabuf*) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpabuf_head (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;
 struct wpabuf* wpabuf_zeropad (struct wpabuf*,int) ;
 int wps_kdf (int *,int *,int ,char*,int *,int) ;

int wps_derive_keys(struct wps_data *wps)
{
 struct wpabuf *pubkey, *dh_shared;
 u8 dhkey[SHA256_MAC_LEN], kdk[SHA256_MAC_LEN];
 const u8 *addr[3];
 size_t len[3];
 u8 keys[WPS_AUTHKEY_LEN + WPS_KEYWRAPKEY_LEN + WPS_EMSK_LEN];

 if (wps->dh_privkey == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: Own DH private key not available");
  return -1;
 }

 pubkey = wps->registrar ? wps->dh_pubkey_e : wps->dh_pubkey_r;
 if (pubkey == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: Peer DH public key not available");
  return -1;
 }

 wpa_hexdump_buf_key(MSG_DEBUG, "WPS: DH Private Key", wps->dh_privkey);
 wpa_hexdump_buf(MSG_DEBUG, "WPS: DH peer Public Key", pubkey);
 dh_shared = dh5_derive_shared(wps->dh_ctx, pubkey, wps->dh_privkey);
 dh5_free(wps->dh_ctx);
 wps->dh_ctx = ((void*)0);
 dh_shared = wpabuf_zeropad(dh_shared, 192);
 if (dh_shared == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: Failed to derive DH shared key");
  return -1;
 }







 wpabuf_free(wps->dh_privkey);
 wps->dh_privkey = ((void*)0);


 wpa_hexdump_buf_key(MSG_DEBUG, "WPS: DH shared key", dh_shared);


 addr[0] = wpabuf_head(dh_shared);
 len[0] = wpabuf_len(dh_shared);

 sha256_vector(1, addr, len, dhkey);
 wpa_hexdump_key(MSG_DEBUG, "WPS: DHKey", dhkey, sizeof(dhkey));
 wpabuf_free(dh_shared);


 addr[0] = wps->nonce_e;
 len[0] = WPS_NONCE_LEN;
 addr[1] = wps->mac_addr_e;
 len[1] = ETH_ALEN;
 addr[2] = wps->nonce_r;
 len[2] = WPS_NONCE_LEN;
 hmac_sha256_vector(dhkey, sizeof(dhkey), 3, addr, len, kdk);
 wpa_hexdump_key(MSG_DEBUG, "WPS: KDK", kdk, sizeof(kdk));

 wps_kdf(kdk, ((void*)0), 0, "Wi-Fi Easy and Secure Key Derivation",
  keys, sizeof(keys));
 os_memcpy(wps->authkey, keys, WPS_AUTHKEY_LEN);
 os_memcpy(wps->keywrapkey, keys + WPS_AUTHKEY_LEN, WPS_KEYWRAPKEY_LEN);
 os_memcpy(wps->emsk, keys + WPS_AUTHKEY_LEN + WPS_KEYWRAPKEY_LEN,
    WPS_EMSK_LEN);

 wpa_hexdump_key(MSG_DEBUG, "WPS: AuthKey",
   wps->authkey, WPS_AUTHKEY_LEN);
 wpa_hexdump_key(MSG_DEBUG, "WPS: KeyWrapKey",
   wps->keywrapkey, WPS_KEYWRAPKEY_LEN);
 wpa_hexdump_key(MSG_DEBUG, "WPS: EMSK", wps->emsk, WPS_EMSK_LEN);

 return 0;
}
