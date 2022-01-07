
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MUTEX_TYPE ;


 int CRYPTO_num_locks () ;
 int CRYPTO_set_id_callback (int ) ;
 int CRYPTO_set_locking_callback (int ) ;
 int MUTEX_SETUP (int ) ;
 int id_function ;
 int locking_function ;
 int * malloc (int) ;
 int * mutex_buf ;

int thread_setup(void)
{
  int i;

  mutex_buf = malloc(CRYPTO_num_locks() * sizeof(MUTEX_TYPE));
  if(!mutex_buf)
    return 0;
  for(i = 0; i < CRYPTO_num_locks(); i++)
    MUTEX_SETUP(mutex_buf[i]);
  CRYPTO_set_id_callback(id_function);
  CRYPTO_set_locking_callback(locking_function);
  return 1;
}
