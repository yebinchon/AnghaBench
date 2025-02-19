
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tlsv1_server {size_t num_cipher_suites; int * cipher_suites; int verify; int state; struct tlsv1_credentials* cred; } ;
struct tlsv1_credentials {int dummy; } ;


 int CLIENT_HELLO ;
 int MSG_DEBUG ;
 int TLS_RSA_WITH_3DES_EDE_CBC_SHA ;
 int TLS_RSA_WITH_AES_128_CBC_SHA ;
 int TLS_RSA_WITH_AES_256_CBC_SHA ;
 int TLS_RSA_WITH_RC4_128_MD5 ;
 int TLS_RSA_WITH_RC4_128_SHA ;
 int os_free (struct tlsv1_server*) ;
 scalar_t__ os_zalloc (int) ;
 scalar_t__ tls_verify_hash_init (int *) ;
 int wpa_printf (int ,char*) ;

struct tlsv1_server * tlsv1_server_init(struct tlsv1_credentials *cred)
{
 struct tlsv1_server *conn;
 size_t count;
 u16 *suites;

 conn = (struct tlsv1_server *)os_zalloc(sizeof(*conn));
 if (conn == ((void*)0))
  return ((void*)0);

 conn->cred = cred;

 conn->state = CLIENT_HELLO;

 if (tls_verify_hash_init(&conn->verify) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to initialize verify "
      "hash");
  os_free(conn);
  return ((void*)0);
 }

 count = 0;
 suites = conn->cipher_suites;
 suites[count++] = TLS_RSA_WITH_AES_256_CBC_SHA;
 suites[count++] = TLS_RSA_WITH_AES_128_CBC_SHA;



 suites[count++] = TLS_RSA_WITH_RC4_128_SHA;
 suites[count++] = TLS_RSA_WITH_RC4_128_MD5;
 conn->num_cipher_suites = count;

 return conn;
}
