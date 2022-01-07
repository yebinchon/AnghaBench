
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mbedtls_x509_buf ;
typedef scalar_t__ mbedtls_pk_type_t ;
struct TYPE_2__ {int expected_salt_len; scalar_t__ mgf1_hash_id; } ;
typedef TYPE_1__ mbedtls_pk_rsassa_pss_options ;
typedef scalar_t__ mbedtls_md_type_t ;
typedef int mbedtls_md_info_t ;


 scalar_t__ MBEDTLS_PK_RSASSA_PSS ;
 int MBEDTLS_X509_SAFE_SNPRINTF ;
 char* mbedtls_md_get_name (int const*) ;
 int * mbedtls_md_info_from_type (scalar_t__) ;
 int mbedtls_oid_get_sig_alg_desc (int const*,char const**) ;
 int mbedtls_snprintf (char*,size_t,char*,...) ;

int mbedtls_x509_sig_alg_gets( char *buf, size_t size, const mbedtls_x509_buf *sig_oid,
                       mbedtls_pk_type_t pk_alg, mbedtls_md_type_t md_alg,
                       const void *sig_opts )
{
    int ret;
    char *p = buf;
    size_t n = size;
    const char *desc = ((void*)0);

    ret = mbedtls_oid_get_sig_alg_desc( sig_oid, &desc );
    if( ret != 0 )
        ret = mbedtls_snprintf( p, n, "???" );
    else
        ret = mbedtls_snprintf( p, n, "%s", desc );
    MBEDTLS_X509_SAFE_SNPRINTF;
    ((void) pk_alg);
    ((void) md_alg);
    ((void) sig_opts);


    return( (int)( size - n ) );
}
