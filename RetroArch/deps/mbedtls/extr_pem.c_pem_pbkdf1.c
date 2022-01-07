
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_md5_context ;


 int mbedtls_md5_finish (int *,unsigned char*) ;
 int mbedtls_md5_free (int *) ;
 int mbedtls_md5_init (int *) ;
 int mbedtls_md5_starts (int *) ;
 int mbedtls_md5_update (int *,unsigned char const*,int) ;
 int mbedtls_zeroize (unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static void pem_pbkdf1( unsigned char *key, size_t keylen,
                        unsigned char *iv,
                        const unsigned char *pwd, size_t pwdlen )
{
    mbedtls_md5_context md5_ctx;
    unsigned char md5sum[16];
    size_t use_len;

    mbedtls_md5_init( &md5_ctx );




    mbedtls_md5_starts( &md5_ctx );
    mbedtls_md5_update( &md5_ctx, pwd, pwdlen );
    mbedtls_md5_update( &md5_ctx, iv, 8 );
    mbedtls_md5_finish( &md5_ctx, md5sum );

    if( keylen <= 16 )
    {
        memcpy( key, md5sum, keylen );

        mbedtls_md5_free( &md5_ctx );
        mbedtls_zeroize( md5sum, 16 );
        return;
    }

    memcpy( key, md5sum, 16 );




    mbedtls_md5_starts( &md5_ctx );
    mbedtls_md5_update( &md5_ctx, md5sum, 16 );
    mbedtls_md5_update( &md5_ctx, pwd, pwdlen );
    mbedtls_md5_update( &md5_ctx, iv, 8 );
    mbedtls_md5_finish( &md5_ctx, md5sum );

    use_len = 16;
    if( keylen < 32 )
        use_len = keylen - 16;

    memcpy( key + 16, md5sum, use_len );

    mbedtls_md5_free( &md5_ctx );
    mbedtls_zeroize( md5sum, 16 );
}
