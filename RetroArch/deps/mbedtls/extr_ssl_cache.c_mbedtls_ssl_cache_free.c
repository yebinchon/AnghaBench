
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p; } ;
struct TYPE_7__ {TYPE_1__ peer_cert; int session; struct TYPE_7__* next; } ;
typedef TYPE_2__ mbedtls_ssl_cache_entry ;
struct TYPE_8__ {int mutex; TYPE_2__* chain; } ;
typedef TYPE_3__ mbedtls_ssl_cache_context ;


 int mbedtls_free (TYPE_2__*) ;
 int mbedtls_mutex_free (int *) ;
 int mbedtls_ssl_session_free (int *) ;

void mbedtls_ssl_cache_free( mbedtls_ssl_cache_context *cache )
{
    mbedtls_ssl_cache_entry *cur, *prv;

    cur = cache->chain;

    while( cur != ((void*)0) )
    {
        prv = cur;
        cur = cur->next;

        mbedtls_ssl_session_free( &prv->session );





        mbedtls_free( prv );
    }




}
