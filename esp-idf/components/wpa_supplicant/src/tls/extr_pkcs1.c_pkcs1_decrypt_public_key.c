
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_rsa_key {int dummy; } ;


 int MSG_INFO ;
 scalar_t__ crypto_rsa_exptmod (int const*,size_t,int*,size_t*,struct crypto_rsa_key*,int ) ;
 int os_memmove (int*,int*,size_t) ;
 int wpa_printf (int ,char*) ;

int pkcs1_decrypt_public_key(struct crypto_rsa_key *key,
        const u8 *crypt, size_t crypt_len,
        u8 *plain, size_t *plain_len)
{
 size_t len;
 u8 *pos;

 len = *plain_len;
 if (crypto_rsa_exptmod(crypt, crypt_len, plain, &len, key, 0) < 0)
  return -1;
 if (len < 3 + 8 + 16 ||
     plain[0] != 0x00 || (plain[1] != 0x00 && plain[1] != 0x01)) {
  wpa_printf(MSG_INFO, "LibTomCrypt: Invalid signature EB "
      "structure");
  return -1;
 }

 pos = plain + 3;
 if (plain[1] == 0x00) {

  if (plain[2] != 0x00) {
   wpa_printf(MSG_INFO, "LibTomCrypt: Invalid signature "
       "PS (BT=00)");
   return -1;
  }
  while (pos + 1 < plain + len && *pos == 0x00 && pos[1] == 0x00)
   pos++;
 } else {

  if (plain[2] != 0xff) {
   wpa_printf(MSG_INFO, "LibTomCrypt: Invalid signature "
       "PS (BT=01)");
   return -1;
  }
  while (pos < plain + len && *pos == 0xff)
   pos++;
 }

 if (pos - plain - 2 < 8) {

  wpa_printf(MSG_INFO, "LibTomCrypt: Too short signature "
      "padding");
  return -1;
 }

 if (pos + 16 >= plain + len || *pos != 0x00) {
  wpa_printf(MSG_INFO, "LibTomCrypt: Invalid signature EB "
      "structure (2)");
  return -1;
 }
 pos++;
 len -= pos - plain;


 os_memmove(plain, pos, len);
 *plain_len = len;

 return 0;
}
