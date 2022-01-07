
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ state; TYPE_2__* handshake; TYPE_1__* conf; int in_hslen; int in_msg; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_7__ {int in_msg_seq; int (* update_checksum ) (TYPE_3__*,int ,int ) ;} ;
struct TYPE_6__ {scalar_t__ transport; } ;


 scalar_t__ MBEDTLS_SSL_HANDSHAKE_OVER ;
 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 int stub1 (TYPE_3__*,int ,int ) ;

void mbedtls_ssl_update_handshake_status( mbedtls_ssl_context *ssl )
{

    if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER &&
        ssl->handshake != ((void*)0) )
    {
        ssl->handshake->update_checksum( ssl, ssl->in_msg, ssl->in_hslen );
    }
}
