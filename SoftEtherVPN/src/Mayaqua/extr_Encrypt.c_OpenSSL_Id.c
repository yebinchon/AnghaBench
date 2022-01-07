
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CRYPTO_THREADID ;


 int CRYPTO_THREADID_set_numeric (int *,unsigned long) ;
 scalar_t__ ThreadId () ;

__attribute__((used)) static void OpenSSL_Id(CRYPTO_THREADID *id)
{
 CRYPTO_THREADID_set_numeric(id, (unsigned long)ThreadId());
}
