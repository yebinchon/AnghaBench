
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_cleanup_all_ex_data () ;
 int ERR_remove_thread_state (int *) ;
 int OPENSSL_thread_stop () ;

void FreeOpenSSLThreadState()
{

 CRYPTO_cleanup_all_ex_data();
 ERR_remove_thread_state(((void*)0));





}
