
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * key; } ;
typedef TYPE_3__ mbedtls_ssl_key_cert ;
struct TYPE_9__ {TYPE_2__* conf; TYPE_1__* handshake; } ;
typedef TYPE_4__ mbedtls_ssl_context ;
typedef int mbedtls_pk_context ;
struct TYPE_7__ {TYPE_3__* key_cert; } ;
struct TYPE_6__ {TYPE_3__* key_cert; } ;



__attribute__((used)) static inline mbedtls_pk_context *mbedtls_ssl_own_key( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_key_cert *key_cert;

    if( ssl->handshake != ((void*)0) && ssl->handshake->key_cert != ((void*)0) )
        key_cert = ssl->handshake->key_cert;
    else
        key_cert = ssl->conf->key_cert;

    return( key_cert == ((void*)0) ? ((void*)0) : key_cert->key );
}
