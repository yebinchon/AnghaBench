
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mbedtls_cipher_padding_t ;
struct TYPE_5__ {int get_padding; int * add_padding; TYPE_1__* cipher_info; } ;
typedef TYPE_2__ mbedtls_cipher_context_t ;
struct TYPE_4__ {scalar_t__ mode; } ;


 int MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_CIPHER_FEATURE_UNAVAILABLE ;
 scalar_t__ MBEDTLS_MODE_CBC ;





 int * add_one_and_zeros_padding ;
 int * add_pkcs_padding ;
 int * add_zeros_and_len_padding ;
 int * add_zeros_padding ;
 int get_no_padding ;
 int get_one_and_zeros_padding ;
 int get_pkcs_padding ;
 int get_zeros_and_len_padding ;
 int get_zeros_padding ;

int mbedtls_cipher_set_padding_mode( mbedtls_cipher_context_t *ctx, mbedtls_cipher_padding_t mode )
{
    if( ((void*)0) == ctx ||
        MBEDTLS_MODE_CBC != ctx->cipher_info->mode )
    {
        return( MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA );
    }

    switch( mode )
    {
    case 132:
        ctx->add_padding = ((void*)0);
        ctx->get_padding = get_no_padding;
        break;

    default:
        return( MBEDTLS_ERR_CIPHER_FEATURE_UNAVAILABLE );
    }

    return( 0 );
}
