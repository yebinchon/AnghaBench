
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* hostname; } ;
typedef TYPE_1__ mbedtls_ssl_context ;


 int MBEDTLS_ERR_SSL_ALLOC_FAILED ;
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ;
 size_t MBEDTLS_SSL_MAX_HOST_NAME_LEN ;
 scalar_t__ mbedtls_calloc (int,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

int mbedtls_ssl_set_hostname( mbedtls_ssl_context *ssl, const char *hostname )
{
    size_t hostname_len;

    if( hostname == ((void*)0) )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    hostname_len = strlen( hostname );

    if( hostname_len + 1 == 0 )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    if( hostname_len > MBEDTLS_SSL_MAX_HOST_NAME_LEN )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    ssl->hostname = (char*)mbedtls_calloc( 1, hostname_len + 1 );

    if( ssl->hostname == ((void*)0) )
        return( MBEDTLS_ERR_SSL_ALLOC_FAILED );

    memcpy( ssl->hostname, hostname, hostname_len );

    ssl->hostname[hostname_len] = '\0';

    return( 0 );
}
