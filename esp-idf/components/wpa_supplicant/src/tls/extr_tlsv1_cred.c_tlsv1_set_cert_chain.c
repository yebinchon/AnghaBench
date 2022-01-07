
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct x509_certificate {int dummy; } ;


 int MSG_INFO ;
 int os_free (int const*) ;
 int tlsv1_add_cert (struct x509_certificate**,int const*,size_t) ;
 int wpa_printf (int ,char*,char const*) ;

__attribute__((used)) static int tlsv1_set_cert_chain(struct x509_certificate **chain,
    const char *cert, const u8 *cert_blob,
    size_t cert_blob_len)
{
 if (cert_blob)
  return tlsv1_add_cert(chain, cert_blob, cert_blob_len);

 if (cert) {
  u8 *buf = ((void*)0);
  size_t len = 0;
  int ret;

  if (buf == ((void*)0)) {
   wpa_printf(MSG_INFO, "TLSv1: Failed to read '%s'",
       cert);
   return -1;
  }

  ret = tlsv1_add_cert(chain, buf, len);
  os_free(buf);
  return ret;
 }

 return 0;
}
