
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_num_locks () ;
 int CRYPTO_set_locking_callback (int *) ;
 int OPENSSL_free (int *) ;
 int * lockarray ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void kill_locks(void)
{
  int i;

  CRYPTO_set_locking_callback(((void*)0));
  for(i = 0; i<CRYPTO_num_locks(); i++)
    pthread_mutex_destroy(&(lockarray[i]));

  OPENSSL_free(lockarray);
}
