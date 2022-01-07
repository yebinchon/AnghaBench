
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int CRYPTO_num_locks () ;
 int CRYPTO_set_id_callback (unsigned long (*) ()) ;
 int CRYPTO_set_locking_callback (void (*) ()) ;
 scalar_t__ OPENSSL_malloc (int) ;
 scalar_t__ lock_callback ;
 int * lockarray ;
 int pthread_mutex_init (int *,int *) ;
 scalar_t__ thread_id ;

__attribute__((used)) static void init_locks(void)
{
  int i;

  lockarray = (pthread_mutex_t *)OPENSSL_malloc(CRYPTO_num_locks() *
                                                sizeof(pthread_mutex_t));
  for(i = 0; i<CRYPTO_num_locks(); i++) {
    pthread_mutex_init(&(lockarray[i]), ((void*)0));
  }

  CRYPTO_set_id_callback((unsigned long (*)())thread_id);
  CRYPTO_set_locking_callback((void (*)())lock_callback);
}
