
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct wps_data {int keywrapkey; } ;
struct wpabuf {size_t used; } ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 scalar_t__ aes_128_cbc_decrypt (int ,size_t const*,int ,size_t) ;
 int wpa_hexdump (int ,char*,size_t const*,size_t) ;
 int wpa_hexdump_buf_key (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_free (struct wpabuf*) ;
 size_t* wpabuf_head_u8 (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;
 int wpabuf_mhead (struct wpabuf*) ;
 int wpabuf_put_data (struct wpabuf*,size_t const*,size_t) ;

struct wpabuf * wps_decrypt_encr_settings(struct wps_data *wps, const u8 *encr,
       size_t encr_len)
{
 struct wpabuf *decrypted;
 const size_t block_size = 16;
 size_t i;
 u8 pad;
 const u8 *pos;


 if (encr == ((void*)0) || encr_len < 2 * block_size || encr_len % block_size)
 {
  wpa_printf(MSG_DEBUG, "WPS: No Encrypted Settings received");
  return ((void*)0);
 }

 decrypted = wpabuf_alloc(encr_len - block_size);
 if (decrypted == ((void*)0))
  return ((void*)0);

 wpa_hexdump(MSG_MSGDUMP, "WPS: Encrypted Settings", encr, encr_len);
 wpabuf_put_data(decrypted, encr + block_size, encr_len - block_size);
 wpa_printf(MSG_DEBUG, "WPS: AES Decrypt setting");
 if (aes_128_cbc_decrypt(wps->keywrapkey, encr, wpabuf_mhead(decrypted),
            wpabuf_len(decrypted))) {
  wpabuf_free(decrypted);
  return ((void*)0);
 }

 wpa_hexdump_buf_key(MSG_MSGDUMP, "WPS: Decrypted Encrypted Settings",
       decrypted);

 pos = wpabuf_head_u8(decrypted) + wpabuf_len(decrypted) - 1;
 pad = *pos;
 if (pad > wpabuf_len(decrypted)) {
  wpa_printf(MSG_DEBUG, "WPS: Invalid PKCS#5 v2.0 pad value");
  wpabuf_free(decrypted);
  return ((void*)0);
 }
 for (i = 0; i < pad; i++) {
  if (*pos-- != pad) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid PKCS#5 v2.0 pad "
       "string");
   wpabuf_free(decrypted);
   return ((void*)0);
  }
 }
 decrypted->used -= pad;

 return decrypted;
}
