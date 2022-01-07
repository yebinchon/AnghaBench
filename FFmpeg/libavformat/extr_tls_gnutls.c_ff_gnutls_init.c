
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GCRYCTL_ANY_INITIALIZATION_P ;
 int GCRYCTL_SET_THREAD_CBS ;
 int ff_lock_avformat () ;
 int ff_unlock_avformat () ;
 scalar_t__ gcry_control (int ,...) ;
 int gcry_threads_pthread ;
 int gnutls_global_init () ;

void ff_gnutls_init(void)
{
    ff_lock_avformat();




    gnutls_global_init();
    ff_unlock_avformat();
}
