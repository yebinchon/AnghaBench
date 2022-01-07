
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT ;


 int CRYPTO_THREADID_set_callback (int *) ;
 int CRYPTO_set_locking_callback (int *) ;
 int DeleteLock (int ) ;
 int Free (int *) ;
 size_t ssl_lock_num ;
 int * ssl_lock_obj ;

void OpenSSL_FreeLock()
{

 UINT i;

 for (i = 0;i < ssl_lock_num;i++)
 {
  DeleteLock(ssl_lock_obj[i]);
 }
 Free(ssl_lock_obj);
 ssl_lock_obj = ((void*)0);

 CRYPTO_set_locking_callback(((void*)0));
 CRYPTO_THREADID_set_callback(((void*)0));

}
