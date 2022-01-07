
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int output_buf ;
typedef int mbedtls_pk_context ;


 int MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE ;
 scalar_t__ MBEDTLS_PK_ECKEY ;
 scalar_t__ MBEDTLS_PK_RSA ;
 char* PEM_BEGIN_PRIVATE_KEY_EC ;
 char* PEM_BEGIN_PRIVATE_KEY_RSA ;
 char* PEM_END_PRIVATE_KEY_EC ;
 char* PEM_END_PRIVATE_KEY_RSA ;
 int PRV_DER_MAX_BYTES ;
 int mbedtls_pem_write_buffer (char const*,char const*,unsigned char*,int,unsigned char*,size_t,size_t*) ;
 scalar_t__ mbedtls_pk_get_type (int *) ;
 int mbedtls_pk_write_key_der (int *,unsigned char*,int) ;

int mbedtls_pk_write_key_pem( mbedtls_pk_context *key, unsigned char *buf, size_t size )
{
    int ret;
    unsigned char output_buf[PRV_DER_MAX_BYTES];
    const char *begin, *end;
    size_t olen = 0;

    if( ( ret = mbedtls_pk_write_key_der( key, output_buf, sizeof(output_buf) ) ) < 0 )
        return( ret );
        return( MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE );

    if( ( ret = mbedtls_pem_write_buffer( begin, end,
                                  output_buf + sizeof(output_buf) - ret,
                                  ret, buf, size, &olen ) ) != 0 )
    {
        return( ret );
    }

    return( 0 );
}
