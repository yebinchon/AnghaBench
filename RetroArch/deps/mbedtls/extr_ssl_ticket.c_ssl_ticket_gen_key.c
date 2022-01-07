
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {unsigned char* name; int ctx; scalar_t__ generation_time; } ;
typedef TYPE_1__ mbedtls_ssl_ticket_key ;
struct TYPE_5__ {int (* f_rng ) (int ,unsigned char*,int) ;int p_rng; TYPE_1__* keys; } ;
typedef TYPE_2__ mbedtls_ssl_ticket_context ;
typedef int buf ;


 int MAX_KEY_BYTES ;
 int MBEDTLS_ENCRYPT ;
 int mbedtls_cipher_get_key_bitlen (int *) ;
 int mbedtls_cipher_setkey (int *,unsigned char*,int ,int ) ;
 scalar_t__ mbedtls_time (int *) ;
 int mbedtls_zeroize (unsigned char*,int) ;
 int stub1 (int ,unsigned char*,int) ;
 int stub2 (int ,unsigned char*,int) ;

__attribute__((used)) static int ssl_ticket_gen_key( mbedtls_ssl_ticket_context *ctx,
                               unsigned char index )
{
    int ret;
    unsigned char buf[MAX_KEY_BYTES];
    mbedtls_ssl_ticket_key *key = ctx->keys + index;





    if( ( ret = ctx->f_rng( ctx->p_rng, key->name, sizeof( key->name ) ) ) != 0 )
        return( ret );

    if( ( ret = ctx->f_rng( ctx->p_rng, buf, sizeof( buf ) ) ) != 0 )
        return( ret );


    ret = mbedtls_cipher_setkey( &key->ctx, buf,
                                 mbedtls_cipher_get_key_bitlen( &key->ctx ),
                                 MBEDTLS_ENCRYPT );

    mbedtls_zeroize( buf, sizeof( buf ) );

    return( ret );
}
