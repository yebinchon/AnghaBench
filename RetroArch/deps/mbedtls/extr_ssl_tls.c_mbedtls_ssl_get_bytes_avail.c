
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t in_msglen; int * in_offt; } ;
typedef TYPE_1__ mbedtls_ssl_context ;



size_t mbedtls_ssl_get_bytes_avail( const mbedtls_ssl_context *ssl )
{
    return( ssl->in_offt == ((void*)0) ? 0 : ssl->in_msglen );
}
