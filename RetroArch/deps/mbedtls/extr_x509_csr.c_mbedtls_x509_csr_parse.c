
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mbedtls_x509_csr ;
struct TYPE_5__ {unsigned char const* buf; size_t buflen; } ;
typedef TYPE_1__ mbedtls_pem_context ;


 int MBEDTLS_ERR_PEM_NO_HEADER_FOOTER_PRESENT ;
 int MBEDTLS_ERR_X509_BAD_INPUT_DATA ;
 int mbedtls_pem_free (TYPE_1__*) ;
 int mbedtls_pem_init (TYPE_1__*) ;
 int mbedtls_pem_read_buffer (TYPE_1__*,char*,char*,unsigned char const*,int *,int ,size_t*) ;
 int mbedtls_x509_csr_parse_der (int *,unsigned char const*,size_t) ;

int mbedtls_x509_csr_parse( mbedtls_x509_csr *csr, const unsigned char *buf, size_t buflen )
{
    if( csr == ((void*)0) || buf == ((void*)0) || buflen == 0 )
        return( MBEDTLS_ERR_X509_BAD_INPUT_DATA );
    return( mbedtls_x509_csr_parse_der( csr, buf, buflen ) );
}
