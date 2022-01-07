
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t minlen; size_t maclen; int cipher_ctx_enc; } ;
typedef TYPE_2__ mbedtls_ssl_transform ;
struct TYPE_8__ {TYPE_1__* session_out; TYPE_2__* transform_out; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_6__ {scalar_t__ compression; } ;


 int MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE ;
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ;




 scalar_t__ MBEDTLS_SSL_COMPRESS_NULL ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 size_t mbedtls_cipher_get_block_size (int *) ;
 int mbedtls_cipher_get_cipher_mode (int *) ;
 scalar_t__ mbedtls_ssl_hdr_len (TYPE_3__ const*) ;

int mbedtls_ssl_get_record_expansion( const mbedtls_ssl_context *ssl )
{
    size_t transform_expansion;
    const mbedtls_ssl_transform *transform = ssl->transform_out;






    if( transform == ((void*)0) )
        return( (int) mbedtls_ssl_hdr_len( ssl ) );

    switch( mbedtls_cipher_get_cipher_mode( &transform->cipher_ctx_enc ) )
    {
        case 129:
        case 130:
        case 128:
            transform_expansion = transform->minlen;
            break;

        case 131:
            transform_expansion = transform->maclen
                      + mbedtls_cipher_get_block_size( &transform->cipher_ctx_enc );
            break;

        default:
            MBEDTLS_SSL_DEBUG_MSG( 1, ( "should never happen" ) );
            return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );
    }

    return( (int)( mbedtls_ssl_hdr_len( ssl ) + transform_expansion ) );
}
