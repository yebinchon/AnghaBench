
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_credentials {int dummy; } ;
struct tls_connection_params {int flags; int private_key_blob_len; int private_key_blob; int private_key_passwd; int private_key; int client_cert_blob_len; int client_cert_blob; int client_cert; int ca_path; int ca_cert_blob_len; int ca_cert_blob; int ca_cert; } ;
struct tls_connection {int * client; } ;


 int MSG_INFO ;
 int TLS_CONN_DISABLE_TIME_CHECKS ;
 scalar_t__ tlsv1_client_set_cred (int *,struct tlsv1_credentials*) ;
 int tlsv1_client_set_time_checks (int *,int) ;
 struct tlsv1_credentials* tlsv1_cred_alloc () ;
 int tlsv1_cred_free (struct tlsv1_credentials*) ;
 scalar_t__ tlsv1_set_ca_cert (struct tlsv1_credentials*,int ,int ,int ,int ) ;
 scalar_t__ tlsv1_set_cert (struct tlsv1_credentials*,int ,int ,int ) ;
 scalar_t__ tlsv1_set_private_key (struct tlsv1_credentials*,int ,int ,int ,int ) ;
 int wpa_printf (int ,char*) ;

int tls_connection_set_params(void *tls_ctx, struct tls_connection *conn,
         const struct tls_connection_params *params)
{
 return -1;

}
