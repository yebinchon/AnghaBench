
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct curl_tlssessioninfo {int backend; int internals; } ;
typedef int gnutls_x509_crt_t ;
struct TYPE_5__ {char* size; int data; } ;
typedef TYPE_1__ gnutls_datum_t ;
typedef int CURLcode ;


 int CURLINFO_TLS_SESSION ;


 int GNUTLS_CRT_PRINT_FULL ;
 int GNUTLS_E_SUCCESS ;
 int GNUTLS_X509_FMT_DER ;
 int curl ;
 int curl_easy_getinfo (int ,int ,struct curl_tlssessioninfo const**) ;
 int fprintf (int ,char*,unsigned int,char*,int ) ;
 TYPE_1__* gnutls_certificate_get_peers (int ,unsigned int*) ;
 int gnutls_free (int ) ;
 int gnutls_x509_crt_deinit (int ) ;
 int gnutls_x509_crt_import (int ,TYPE_1__ const*,int ) ;
 int gnutls_x509_crt_init (int *) ;
 int gnutls_x509_crt_print (int ,int ,TYPE_1__*) ;
 int stderr ;

__attribute__((used)) static size_t wrfu(void *ptr, size_t size, size_t nmemb, void *stream)
{
  const struct curl_tlssessioninfo *info;
  unsigned int cert_list_size;
  const gnutls_datum_t *chainp;
  CURLcode res;

  (void)stream;
  (void)ptr;

  res = curl_easy_getinfo(curl, CURLINFO_TLS_SESSION, &info);

  if(!res) {
    switch(info->backend) {
    case 129:

      chainp = gnutls_certificate_get_peers(info->internals, &cert_list_size);
      if((chainp) && (cert_list_size)) {
        unsigned int i;

        for(i = 0; i < cert_list_size; i++) {
          gnutls_x509_crt_t cert;
          gnutls_datum_t dn;

          if(GNUTLS_E_SUCCESS == gnutls_x509_crt_init(&cert)) {
            if(GNUTLS_E_SUCCESS ==
               gnutls_x509_crt_import(cert, &chainp[i], GNUTLS_X509_FMT_DER)) {
              if(GNUTLS_E_SUCCESS ==
                 gnutls_x509_crt_print(cert, GNUTLS_CRT_PRINT_FULL, &dn)) {
                fprintf(stderr, "Certificate #%u: %.*s", i, dn.size, dn.data);

                gnutls_free(dn.data);
              }
            }

            gnutls_x509_crt_deinit(cert);
          }
        }
      }
      break;
    case 128:
    default:
      break;
    }
  }

  return size * nmemb;
}
