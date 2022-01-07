
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_private_key {int dummy; } ;


 int MSG_DEBUG ;
 unsigned char* base64_decode (int const*,int,size_t*) ;
 struct crypto_private_key* crypto_private_key_import (unsigned char*,size_t,int *) ;
 int os_free (unsigned char*) ;
 int os_strlen (char*) ;
 char* pem_key2_begin ;
 char* pem_key2_end ;
 char* pem_key_begin ;
 char* pem_key_end ;
 int * search_tag (char*,int const*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct crypto_private_key * tlsv1_set_key_pem(const u8 *key, size_t len)
{
 const u8 *pos, *end;
 unsigned char *der;
 size_t der_len;
 struct crypto_private_key *pkey;

 pos = search_tag(pem_key_begin, key, len);
 if (!pos) {
  pos = search_tag(pem_key2_begin, key, len);
  if (!pos)
   return ((void*)0);
  pos += os_strlen(pem_key2_begin);
  end = search_tag(pem_key2_end, pos, key + len - pos);
  if (!end)
   return ((void*)0);
 } else {
  const u8 *pos2;
  pos += os_strlen(pem_key_begin);
  end = search_tag(pem_key_end, pos, key + len - pos);
  if (!end)
   return ((void*)0);
  pos2 = search_tag("Proc-Type: 4,ENCRYPTED", pos, end - pos);
  if (pos2) {
   wpa_printf(MSG_DEBUG, "TLSv1: Unsupported private key "
       "format (Proc-Type/DEK-Info)");
   return ((void*)0);
  }
 }

 der = base64_decode(pos, end - pos, &der_len);
 if (!der)
  return ((void*)0);
 pkey = crypto_private_key_import(der, der_len, ((void*)0));
 os_free(der);
 return pkey;
}
