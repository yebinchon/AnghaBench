
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct tls_cipher_suite {scalar_t__ suite; } ;


 size_t NUM_TLS_CIPHER_SUITES ;
 struct tls_cipher_suite const* tls_cipher_suites ;

const struct tls_cipher_suite * tls_get_cipher_suite(u16 suite)
{
 size_t i;
 for (i = 0; i < NUM_TLS_CIPHER_SUITES; i++)
  if (tls_cipher_suites[i].suite == suite)
   return &tls_cipher_suites[i];
 return ((void*)0);
}
