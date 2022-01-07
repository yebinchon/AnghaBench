
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tls_cipher ;
struct tls_cipher_suite {int key_exchange; } ;
 struct tls_cipher_suite* tls_get_cipher_suite (int ) ;

int tls_server_key_exchange_allowed(tls_cipher cipher)
{
 const struct tls_cipher_suite *suite;


 suite = tls_get_cipher_suite(cipher);
 if (suite == ((void*)0))
  return 0;

 switch (suite->key_exchange) {
 case 134:
 case 133:
 case 132:
 case 131:
 case 129:
 case 130:
  return 1;
 case 128:
  return 1 ;
 default:
  return 0;
 }
}
