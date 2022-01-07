
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* buf; size_t buflen; } ;
typedef TYPE_1__ mbedtls_pem_context ;
typedef scalar_t__ mbedtls_cipher_type_t ;


 scalar_t__ MBEDTLS_CIPHER_AES_128_CBC ;
 scalar_t__ MBEDTLS_CIPHER_AES_192_CBC ;
 scalar_t__ MBEDTLS_CIPHER_AES_256_CBC ;
 scalar_t__ MBEDTLS_CIPHER_DES_CBC ;
 scalar_t__ MBEDTLS_CIPHER_DES_EDE3_CBC ;
 scalar_t__ MBEDTLS_CIPHER_NONE ;
 int MBEDTLS_ERR_BASE64_INVALID_CHARACTER ;
 int MBEDTLS_ERR_PEM_ALLOC_FAILED ;
 int MBEDTLS_ERR_PEM_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_PEM_FEATURE_UNAVAILABLE ;
 int MBEDTLS_ERR_PEM_INVALID_DATA ;
 int MBEDTLS_ERR_PEM_INVALID_ENC_IV ;
 int MBEDTLS_ERR_PEM_NO_HEADER_FOOTER_PRESENT ;
 int MBEDTLS_ERR_PEM_PASSWORD_MISMATCH ;
 int MBEDTLS_ERR_PEM_PASSWORD_REQUIRED ;
 int MBEDTLS_ERR_PEM_UNKNOWN_ENC_ALG ;
 int mbedtls_base64_decode (unsigned char*,size_t,size_t*,unsigned char const*,int) ;
 scalar_t__ mbedtls_calloc (int,size_t) ;
 int mbedtls_free (unsigned char*) ;
 scalar_t__ memcmp (unsigned char const*,char*,int) ;
 int pem_aes_decrypt (unsigned char*,int,unsigned char*,size_t,unsigned char const*,size_t) ;
 int pem_des3_decrypt (unsigned char*,unsigned char*,size_t,unsigned char const*,size_t) ;
 int pem_des_decrypt (unsigned char*,unsigned char*,size_t,unsigned char const*,size_t) ;
 scalar_t__ pem_get_iv (unsigned char const*,unsigned char*,int) ;
 int strlen (char const*) ;
 scalar_t__ strstr (char const*,char const*) ;

int mbedtls_pem_read_buffer( mbedtls_pem_context *ctx, const char *header, const char *footer,
                     const unsigned char *data, const unsigned char *pwd,
                     size_t pwdlen, size_t *use_len )
{
    int ret, enc;
    size_t len;
    unsigned char *buf;
    const unsigned char *s1, *s2, *end;





    ((void) pwd);
    ((void) pwdlen);



    if( ctx == ((void*)0) )
        return( MBEDTLS_ERR_PEM_BAD_INPUT_DATA );

    s1 = (unsigned char *) strstr( (const char *) data, header );

    if( s1 == ((void*)0) )
        return( MBEDTLS_ERR_PEM_NO_HEADER_FOOTER_PRESENT );

    s2 = (unsigned char *) strstr( (const char *) data, footer );

    if( s2 == ((void*)0) || s2 <= s1 )
        return( MBEDTLS_ERR_PEM_NO_HEADER_FOOTER_PRESENT );

    s1 += strlen( header );
    if( *s1 == ' ' ) s1++;
    if( *s1 == '\r' ) s1++;
    if( *s1 == '\n' ) s1++;
    else return( MBEDTLS_ERR_PEM_NO_HEADER_FOOTER_PRESENT );

    end = s2;
    end += strlen( footer );
    if( *end == ' ' ) end++;
    if( *end == '\r' ) end++;
    if( *end == '\n' ) end++;
    *use_len = end - data;

    enc = 0;

    if( s2 - s1 >= 22 && memcmp( s1, "Proc-Type: 4,ENCRYPTED", 22 ) == 0 )
    {
        return( MBEDTLS_ERR_PEM_FEATURE_UNAVAILABLE );


    }

    if( s1 >= s2 )
        return( MBEDTLS_ERR_PEM_INVALID_DATA );

    ret = mbedtls_base64_decode( ((void*)0), 0, &len, s1, s2 - s1 );

    if( ret == MBEDTLS_ERR_BASE64_INVALID_CHARACTER )
        return( MBEDTLS_ERR_PEM_INVALID_DATA + ret );

    if( ( buf = (unsigned char*)mbedtls_calloc( 1, len ) ) == ((void*)0) )
        return( MBEDTLS_ERR_PEM_ALLOC_FAILED );

    if( ( ret = mbedtls_base64_decode( buf, len, &len, s1, s2 - s1 ) ) != 0 )
    {
        mbedtls_free( buf );
        return( MBEDTLS_ERR_PEM_INVALID_DATA + ret );
    }

    if( enc != 0 )
    {
        mbedtls_free( buf );
        return( MBEDTLS_ERR_PEM_FEATURE_UNAVAILABLE );


    }

    ctx->buf = buf;
    ctx->buflen = len;

    return( 0 );
}
