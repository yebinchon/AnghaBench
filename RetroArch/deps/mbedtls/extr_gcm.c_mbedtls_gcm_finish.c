
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int len; int add_len; unsigned char* buf; int base_ectr; } ;
typedef TYPE_1__ mbedtls_gcm_context ;


 int MBEDTLS_ERR_GCM_BAD_INPUT ;
 int PUT_UINT32_BE (int,unsigned char*,int) ;
 int gcm_mult (TYPE_1__*,unsigned char*,unsigned char*) ;
 int memcpy (unsigned char*,int ,size_t) ;
 int memset (unsigned char*,int,int) ;

int mbedtls_gcm_finish( mbedtls_gcm_context *ctx,
                unsigned char *tag,
                size_t tag_len )
{
    unsigned char work_buf[16];
    size_t i;
    uint64_t orig_len = ctx->len * 8;
    uint64_t orig_add_len = ctx->add_len * 8;

    if( tag_len > 16 || tag_len < 4 )
        return( MBEDTLS_ERR_GCM_BAD_INPUT );

    memcpy( tag, ctx->base_ectr, tag_len );

    if( orig_len || orig_add_len )
    {
        memset( work_buf, 0x00, 16 );

        PUT_UINT32_BE( ( orig_add_len >> 32 ), work_buf, 0 );
        PUT_UINT32_BE( ( orig_add_len ), work_buf, 4 );
        PUT_UINT32_BE( ( orig_len >> 32 ), work_buf, 8 );
        PUT_UINT32_BE( ( orig_len ), work_buf, 12 );

        for( i = 0; i < 16; i++ )
            ctx->buf[i] ^= work_buf[i];

        gcm_mult( ctx, ctx->buf, ctx->buf );

        for( i = 0; i < tag_len; i++ )
            tag[i] ^= ctx->buf[i];
    }

    return( 0 );
}
