
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_num_locks () ;
 int CRYPTO_set_id_callback (int *) ;
 int CRYPTO_set_locking_callback (int *) ;
 int MUTEX_CLEANUP (int ) ;
 int free (int *) ;
 int * mutex_buf ;

int thread_cleanup(void)
{
  int i;

  if(!mutex_buf)
    return 0;
  CRYPTO_set_id_callback(((void*)0));
  CRYPTO_set_locking_callback(((void*)0));
  for(i = 0; i < CRYPTO_num_locks(); i++)
    MUTEX_CLEANUP(mutex_buf[i]);
  free(mutex_buf);
  mutex_buf = ((void*)0);
  return 1;
}
