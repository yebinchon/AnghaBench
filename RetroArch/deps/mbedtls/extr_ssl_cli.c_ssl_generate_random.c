
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mbedtls_time_t ;
struct TYPE_7__ {TYPE_2__* conf; TYPE_1__* handshake; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_6__ {scalar_t__ transport; int (* f_rng ) (int ,unsigned char*,int) ;int p_rng; } ;
struct TYPE_5__ {unsigned char* randbytes; int * verify_cookie; } ;


 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 int mbedtls_time (int *) ;
 int stub1 (int ,unsigned char*,int) ;
 int stub2 (int ,unsigned char*,int) ;

__attribute__((used)) static int ssl_generate_random( mbedtls_ssl_context *ssl )
{
    int ret;
    unsigned char *p = ssl->handshake->randbytes;
    if( ( ret = ssl->conf->f_rng( ssl->conf->p_rng, p, 4 ) ) != 0 )
        return( ret );

    p += 4;


    if( ( ret = ssl->conf->f_rng( ssl->conf->p_rng, p, 28 ) ) != 0 )
        return( ret );

    return( 0 );
}
