
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_credentials {int trusted_certs; } ;


 int MSG_INFO ;
 scalar_t__ tlsv1_set_cert_chain (int *,char const*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

int tlsv1_set_ca_cert(struct tlsv1_credentials *cred, const char *cert,
        const u8 *cert_blob, size_t cert_blob_len,
        const char *path)
{
 if (tlsv1_set_cert_chain(&cred->trusted_certs, cert,
     cert_blob, cert_blob_len) < 0)
  return -1;

 if (path) {

  wpa_printf(MSG_INFO, "TLSv1: Use of CA certificate directory "
      "not yet supported");
  return -1;
 }

 return 0;
}
