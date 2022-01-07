
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF_modules_unload (int) ;
 int DeleteLock (int *) ;
 int ENGINE_cleanup () ;
 int ERR_free_strings () ;
 int EVP_cleanup () ;
 int FIPS_mode_set (int ) ;
 int FreeOpenSSLThreadState () ;
 int OpenSSL_FreeLock () ;
 int SSL_COMP_free_compression_methods () ;
 int openssl_inited ;
 int * openssl_lock ;

void FreeCryptLibrary()
{
 openssl_inited = 0;

 DeleteLock(openssl_lock);
 openssl_lock = ((void*)0);

 OpenSSL_FreeLock();





 ENGINE_cleanup();

 CONF_modules_unload(1);
 EVP_cleanup();

 FreeOpenSSLThreadState();

 ERR_free_strings();


 SSL_COMP_free_compression_methods();


}
