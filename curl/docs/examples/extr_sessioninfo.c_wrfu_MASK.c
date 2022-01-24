#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct curl_tlssessioninfo {int backend; int /*<<< orphan*/  internals; } ;
typedef  int /*<<< orphan*/  gnutls_x509_crt_t ;
struct TYPE_5__ {char* size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ gnutls_datum_t ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLINFO_TLS_SESSION ; 
#define  CURLSSLBACKEND_GNUTLS 129 
#define  CURLSSLBACKEND_NONE 128 
 int /*<<< orphan*/  GNUTLS_CRT_PRINT_FULL ; 
 int /*<<< orphan*/  GNUTLS_E_SUCCESS ; 
 int /*<<< orphan*/  GNUTLS_X509_FMT_DER ; 
 int /*<<< orphan*/  curl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct curl_tlssessioninfo const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static size_t FUNC8(void *ptr, size_t size, size_t nmemb, void *stream)
{
  const struct curl_tlssessioninfo *info;
  unsigned int cert_list_size;
  const gnutls_datum_t *chainp;
  CURLcode res;

  (void)stream;
  (void)ptr;

  res = FUNC0(curl, CURLINFO_TLS_SESSION, &info);

  if(!res) {
    switch(info->backend) {
    case CURLSSLBACKEND_GNUTLS:
      /* info->internals is now the gnutls_session_t */
      chainp = FUNC2(info->internals, &cert_list_size);
      if((chainp) && (cert_list_size)) {
        unsigned int i;

        for(i = 0; i < cert_list_size; i++) {
          gnutls_x509_crt_t cert;
          gnutls_datum_t dn;

          if(GNUTLS_E_SUCCESS == FUNC6(&cert)) {
            if(GNUTLS_E_SUCCESS ==
               FUNC5(cert, &chainp[i], GNUTLS_X509_FMT_DER)) {
              if(GNUTLS_E_SUCCESS ==
                 FUNC7(cert, GNUTLS_CRT_PRINT_FULL, &dn)) {
                FUNC1(stderr, "Certificate #%u: %.*s", i, dn.size, dn.data);

                FUNC3(dn.data);
              }
            }

            FUNC4(cert);
          }
        }
      }
      break;
    case CURLSSLBACKEND_NONE:
    default:
      break;
    }
  }

  return size * nmemb;
}