
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int AVERROR (int ) ;
 int CRYPTO_get_locking_callback () ;
 int CRYPTO_num_locks () ;
 int CRYPTO_set_id_callback (int ) ;
 int CRYPTO_set_locking_callback (int ) ;
 int ENOMEM ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 int * av_malloc_array (int,int) ;
 int ff_lock_avformat () ;
 int ff_unlock_avformat () ;
 int openssl_init ;
 int openssl_lock ;
 int * openssl_mutexes ;
 int openssl_thread_id ;
 int pthread_mutex_init (int *,int *) ;

int ff_openssl_init(void)
{
    ff_lock_avformat();
    if (!openssl_init) {
        SSL_library_init();
        SSL_load_error_strings();
    }
    openssl_init++;
    ff_unlock_avformat();

    return 0;
}
