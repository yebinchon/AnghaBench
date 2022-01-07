
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mbedtls_x509_crt ;
typedef scalar_t__ mbedtls_time_t ;
struct TYPE_9__ {scalar_t__ ciphersuite; scalar_t__ compression; scalar_t__ id_len; int * peer_cert; int verify_result; int master; int id; } ;
typedef TYPE_3__ mbedtls_ssl_session ;
struct TYPE_8__ {int len; int * p; } ;
struct TYPE_7__ {scalar_t__ ciphersuite; scalar_t__ compression; scalar_t__ id_len; int verify_result; int master; int id; } ;
struct TYPE_10__ {TYPE_2__ peer_cert; TYPE_1__ session; scalar_t__ timestamp; struct TYPE_10__* next; } ;
typedef TYPE_4__ mbedtls_ssl_cache_entry ;
struct TYPE_11__ {int timeout; int mutex; TYPE_4__* chain; } ;
typedef TYPE_5__ mbedtls_ssl_cache_context ;


 int * mbedtls_calloc (int,int) ;
 int mbedtls_free (int *) ;
 scalar_t__ mbedtls_mutex_lock (int *) ;
 scalar_t__ mbedtls_mutex_unlock (int *) ;
 scalar_t__ mbedtls_time (int *) ;
 int mbedtls_x509_crt_init (int *) ;
 scalar_t__ mbedtls_x509_crt_parse (int *,int *,int ) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int memcpy (int ,int ,int) ;

int mbedtls_ssl_cache_get( void *data, mbedtls_ssl_session *session )
{
    int ret = 1;



    mbedtls_ssl_cache_context *cache = (mbedtls_ssl_cache_context *) data;
    mbedtls_ssl_cache_entry *cur, *entry;






    cur = cache->chain;
    entry = ((void*)0);

    while( cur != ((void*)0) )
    {
        entry = cur;
        cur = cur->next;







        if( session->ciphersuite != entry->session.ciphersuite ||
            session->compression != entry->session.compression ||
            session->id_len != entry->session.id_len )
            continue;

        if( memcmp( session->id, entry->session.id,
                    entry->session.id_len ) != 0 )
            continue;

        memcpy( session->master, entry->session.master, 48 );

        session->verify_result = entry->session.verify_result;
        ret = 0;
        goto exit;
    }

exit:





    return( ret );
}
