
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int mbedtls_x509_buf ;
typedef scalar_t__ mbedtls_time_t ;
struct TYPE_13__ {TYPE_2__* peer_cert; int id; } ;
typedef TYPE_3__ mbedtls_ssl_session ;
struct TYPE_17__ {int * peer_cert; int id_len; int id; } ;
struct TYPE_16__ {int len; TYPE_7__* p; } ;
struct TYPE_14__ {scalar_t__ timestamp; TYPE_7__ session; TYPE_6__ peer_cert; struct TYPE_14__* next; } ;
typedef TYPE_4__ mbedtls_ssl_cache_entry ;
struct TYPE_15__ {int timeout; int max_entries; int mutex; TYPE_4__* chain; } ;
typedef TYPE_5__ mbedtls_ssl_cache_context ;
struct TYPE_11__ {int len; TYPE_3__ const* p; } ;
struct TYPE_12__ {TYPE_1__ raw; } ;


 void* mbedtls_calloc (int,int) ;
 int mbedtls_free (TYPE_7__*) ;
 int mbedtls_mutex_lock (int *) ;
 scalar_t__ mbedtls_mutex_unlock (int *) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int memcpy (TYPE_7__*,TYPE_3__ const*,int) ;
 int memset (TYPE_6__*,int ,int) ;
 scalar_t__ time (int *) ;

int mbedtls_ssl_cache_set( void *data, const mbedtls_ssl_session *session )
{
    int ret = 1;




    mbedtls_ssl_cache_context *cache = (mbedtls_ssl_cache_context *) data;
    mbedtls_ssl_cache_entry *cur, *prv;
    int count = 0;






    cur = cache->chain;
    prv = ((void*)0);

    while( cur != ((void*)0) )
    {
        count++;
        if( memcmp( session->id, cur->session.id, cur->session.id_len ) == 0 )
            break;
        prv = cur;
        cur = cur->next;
    }

    if( cur == ((void*)0) )
    {
        if( count >= cache->max_entries )
        {
            if( cache->chain == ((void*)0) )
            {
                ret = 1;
                goto exit;
            }

            cur = cache->chain;
            cache->chain = cur->next;
            cur->next = ((void*)0);
            prv->next = cur;
        }

        else
        {



            cur = mbedtls_calloc( 1, sizeof(mbedtls_ssl_cache_entry) );
            if( cur == ((void*)0) )
            {
                ret = 1;
                goto exit;
            }

            if( prv == ((void*)0) )
                cache->chain = cur;
            else
                prv->next = cur;
        }




    }

    memcpy( &cur->session, session, sizeof( mbedtls_ssl_session ) );
    ret = 0;

exit:





    return( ret );
}
