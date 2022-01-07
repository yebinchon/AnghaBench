
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mbedtls_pk_context ;
struct TYPE_5__ {unsigned char* buf; size_t buflen; } ;
typedef TYPE_1__ mbedtls_pem_context ;


 int MBEDTLS_ERR_PEM_NO_HEADER_FOOTER_PRESENT ;
 int mbedtls_pem_free (TYPE_1__*) ;
 int mbedtls_pem_init (TYPE_1__*) ;
 int mbedtls_pem_read_buffer (TYPE_1__*,char*,char*,unsigned char const*,int *,int ,size_t*) ;
 int mbedtls_pk_parse_subpubkey (unsigned char**,unsigned char*,int *) ;

int mbedtls_pk_parse_public_key( mbedtls_pk_context *ctx,
                         const unsigned char *key, size_t keylen )
{
    int ret;
    unsigned char *p;
    p = (unsigned char *) key;

    ret = mbedtls_pk_parse_subpubkey( &p, p + keylen, ctx );





    return( ret );
}
