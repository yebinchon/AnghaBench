
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* session; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_4__ {int ciphersuite; } ;


 char const* mbedtls_ssl_get_ciphersuite_name (int ) ;

const char *mbedtls_ssl_get_ciphersuite( const mbedtls_ssl_context *ssl )
{
    if( ssl == ((void*)0) || ssl->session == ((void*)0) )
        return( ((void*)0) );

    return mbedtls_ssl_get_ciphersuite_name( ssl->session->ciphersuite );
}
