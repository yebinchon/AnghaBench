
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LOCK ;


 int CRYPTO_THREADID_set_callback (int ) ;
 int CRYPTO_num_locks () ;
 int CRYPTO_set_locking_callback (int ) ;
 int * Malloc (int) ;
 int NewLock () ;
 int OpenSSL_Id ;
 int OpenSSL_Lock ;
 int ssl_lock_num ;
 int * ssl_lock_obj ;

void OpenSSL_InitLock()
{

 UINT i;


 ssl_lock_num = CRYPTO_num_locks();
 ssl_lock_obj = Malloc(sizeof(LOCK *) * ssl_lock_num);
 for (i = 0;i < ssl_lock_num;i++)
 {
  ssl_lock_obj[i] = NewLock();
 }


 CRYPTO_set_locking_callback(OpenSSL_Lock);
 CRYPTO_THREADID_set_callback(OpenSSL_Id);

}
