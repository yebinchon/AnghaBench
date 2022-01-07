
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cipher_ctx; TYPE_1__* cipher_info; } ;
typedef TYPE_2__ mbedtls_cipher_context_t ;
struct TYPE_4__ {scalar_t__ mode; } ;


 int MBEDTLS_ERR_CIPHER_FEATURE_UNAVAILABLE ;
 int MBEDTLS_GCM_ENCRYPT ;
 scalar_t__ MBEDTLS_MODE_CCM ;
 scalar_t__ MBEDTLS_MODE_GCM ;
 int mbedtls_ccm_encrypt_and_tag (int ,size_t,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char const*,unsigned char*,unsigned char*,size_t) ;
 int mbedtls_gcm_crypt_and_tag (int ,int ,size_t,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char const*,unsigned char*,size_t,unsigned char*) ;

int mbedtls_cipher_auth_encrypt( mbedtls_cipher_context_t *ctx,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *ad, size_t ad_len,
                         const unsigned char *input, size_t ilen,
                         unsigned char *output, size_t *olen,
                         unsigned char *tag, size_t tag_len )
{
    return( MBEDTLS_ERR_CIPHER_FEATURE_UNAVAILABLE );
}
