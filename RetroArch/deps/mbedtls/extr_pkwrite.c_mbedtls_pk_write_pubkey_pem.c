
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int output_buf ;
typedef int mbedtls_pk_context ;


 int PEM_BEGIN_PUBLIC_KEY ;
 int PEM_END_PUBLIC_KEY ;
 int PUB_DER_MAX_BYTES ;
 int mbedtls_pem_write_buffer (int ,int ,unsigned char*,int,unsigned char*,size_t,size_t*) ;
 int mbedtls_pk_write_pubkey_der (int *,unsigned char*,int) ;

int mbedtls_pk_write_pubkey_pem( mbedtls_pk_context *key, unsigned char *buf, size_t size )
{
    int ret;
    unsigned char output_buf[PUB_DER_MAX_BYTES];
    size_t olen = 0;

    if( ( ret = mbedtls_pk_write_pubkey_der( key, output_buf,
                                     sizeof(output_buf) ) ) < 0 )
    {
        return( ret );
    }

    if( ( ret = mbedtls_pem_write_buffer( PEM_BEGIN_PUBLIC_KEY, PEM_END_PUBLIC_KEY,
                                  output_buf + sizeof(output_buf) - ret,
                                  ret, buf, size, &olen ) ) != 0 )
    {
        return( ret );
    }

    return( 0 );
}
