
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct dh_group {size_t prime_len; int prime; int generator_len; int generator; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ crypto_mod_exp (int ,int ,int ,int ,int ,size_t,int ,size_t*) ;
 scalar_t__ os_memcmp (int ,int ,size_t) ;
 scalar_t__ random_get_bytes (int ,size_t) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_hexdump_buf_key (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_mhead (struct wpabuf*) ;
 scalar_t__* wpabuf_mhead_u8 (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,size_t) ;

struct wpabuf *
dh_init(const struct dh_group *dh, struct wpabuf **priv)
{
 struct wpabuf *pv;
 size_t pv_len;

 if (dh == ((void*)0))
  return ((void*)0);

 wpabuf_free(*priv);
 *priv = wpabuf_alloc(dh->prime_len);
 if (*priv == ((void*)0))
  return ((void*)0);

 if (random_get_bytes(wpabuf_put(*priv, dh->prime_len), dh->prime_len))
 {
  wpabuf_free(*priv);
  *priv = ((void*)0);
  return ((void*)0);
 }

 if (os_memcmp(wpabuf_head(*priv), dh->prime, dh->prime_len) > 0) {

  *(wpabuf_mhead_u8(*priv)) = 0;
 }
 wpa_hexdump_buf_key(MSG_DEBUG, "DH: private value", *priv);

 pv_len = dh->prime_len;
 pv = wpabuf_alloc(pv_len);
 if (pv == ((void*)0))
  return ((void*)0);

 if (crypto_mod_exp(dh->generator, dh->generator_len,
      wpabuf_head(*priv), wpabuf_len(*priv),
      dh->prime, dh->prime_len, wpabuf_mhead(pv),
      &pv_len)) {
  wpabuf_free(pv);
  wpa_printf(MSG_INFO, "DH: crypto_mod_exp failed");
  return ((void*)0);
 }
 wpabuf_put(pv, pv_len);
 wpa_hexdump_buf(MSG_DEBUG, "DH: public value", pv);

 return pv;
}
