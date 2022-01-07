
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tls_cipher ;
struct tls_cipher_data {scalar_t__ cipher; } ;


 size_t NUM_TLS_CIPHER_DATA ;
 struct tls_cipher_data const* tls_ciphers ;

const struct tls_cipher_data * tls_get_cipher_data(tls_cipher cipher)
{
 size_t i;
 for (i = 0; i < NUM_TLS_CIPHER_DATA; i++)
  if (tls_ciphers[i].cipher == cipher)
   return &tls_ciphers[i];
 return ((void*)0);
}
