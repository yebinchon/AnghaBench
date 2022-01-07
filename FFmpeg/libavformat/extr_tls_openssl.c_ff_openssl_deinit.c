
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CRYPTO_get_locking_callback () ;
 int CRYPTO_num_locks () ;
 int CRYPTO_set_locking_callback (int *) ;
 int av_free (int *) ;
 int ff_lock_avformat () ;
 int ff_unlock_avformat () ;
 int openssl_init ;
 scalar_t__ openssl_lock ;
 int * openssl_mutexes ;
 int pthread_mutex_destroy (int *) ;

void ff_openssl_deinit(void)
{
    ff_lock_avformat();
    openssl_init--;
    if (!openssl_init) {
    }
    ff_unlock_avformat();
}
