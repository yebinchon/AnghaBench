
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LOCK ;


 int CRYPTO_LOCK ;
 int Lock (int *) ;
 int Unlock (int *) ;
 int ** ssl_lock_obj ;

void OpenSSL_Lock(int mode, int n, const char *file, int line)
{

 LOCK *lock = ssl_lock_obj[n];

 if (mode & CRYPTO_LOCK)
 {

  Lock(lock);
 }
 else
 {

  Unlock(lock);
 }

}
