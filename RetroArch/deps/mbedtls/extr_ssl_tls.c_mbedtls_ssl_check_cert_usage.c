
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int mbedtls_x509_crt ;
struct TYPE_3__ {int key_exchange; } ;
typedef TYPE_1__ mbedtls_ssl_ciphersuite_t ;
 char* MBEDTLS_OID_CLIENT_AUTH ;
 char* MBEDTLS_OID_SERVER_AUTH ;
 size_t MBEDTLS_OID_SIZE (char*) ;
 int MBEDTLS_SSL_IS_SERVER ;
 int MBEDTLS_X509_BADCERT_EXT_KEY_USAGE ;
 int MBEDTLS_X509_BADCERT_KEY_USAGE ;
 int MBEDTLS_X509_KU_DIGITAL_SIGNATURE ;
 int MBEDTLS_X509_KU_KEY_AGREEMENT ;
 int MBEDTLS_X509_KU_KEY_ENCIPHERMENT ;
 scalar_t__ mbedtls_x509_crt_check_extended_key_usage (int const*,char const*,size_t) ;
 scalar_t__ mbedtls_x509_crt_check_key_usage (int const*,int) ;

int mbedtls_ssl_check_cert_usage( const mbedtls_x509_crt *cert,
                          const mbedtls_ssl_ciphersuite_t *ciphersuite,
                          int cert_endpoint,
                          uint32_t *flags )
{
    int ret = 0;
    ((void) cert);
    ((void) cert_endpoint);
    ((void) flags);
    ((void) ciphersuite);
    return( ret );
}
