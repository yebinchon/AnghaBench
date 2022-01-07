
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_asn1_buf ;
typedef int mbedtls_arc4_context ;
typedef int key ;


 int MBEDTLS_ERR_PKCS12_FEATURE_UNAVAILABLE ;
 int MBEDTLS_MD_SHA1 ;
 int mbedtls_arc4_crypt (int *,size_t,unsigned char const*,unsigned char*) ;
 int mbedtls_arc4_free (int *) ;
 int mbedtls_arc4_init (int *) ;
 int mbedtls_arc4_setup (int *,unsigned char*,int) ;
 int mbedtls_zeroize (unsigned char*,int) ;
 int pkcs12_pbe_derive_key_iv (int *,int ,unsigned char const*,size_t,unsigned char*,int,int *,int ) ;

int mbedtls_pkcs12_pbe_sha1_rc4_128( mbedtls_asn1_buf *pbe_params, int mode,
                             const unsigned char *pwd, size_t pwdlen,
                             const unsigned char *data, size_t len,
                             unsigned char *output )
{

    ((void) pbe_params);
    ((void) mode);
    ((void) pwd);
    ((void) pwdlen);
    ((void) data);
    ((void) len);
    ((void) output);
    return( MBEDTLS_ERR_PKCS12_FEATURE_UNAVAILABLE );
}
