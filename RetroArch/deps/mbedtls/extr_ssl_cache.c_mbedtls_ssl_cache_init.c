
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; int max_entries; int timeout; } ;
typedef TYPE_1__ mbedtls_ssl_cache_context ;


 int MBEDTLS_SSL_CACHE_DEFAULT_MAX_ENTRIES ;
 int MBEDTLS_SSL_CACHE_DEFAULT_TIMEOUT ;
 int mbedtls_mutex_init (int *) ;
 int memset (TYPE_1__*,int ,int) ;

void mbedtls_ssl_cache_init( mbedtls_ssl_cache_context *cache )
{
    memset( cache, 0, sizeof( mbedtls_ssl_cache_context ) );

    cache->timeout = MBEDTLS_SSL_CACHE_DEFAULT_TIMEOUT;
    cache->max_entries = MBEDTLS_SSL_CACHE_DEFAULT_MAX_ENTRIES;




}
