
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ff_lock_avformat () ;
 int ff_unlock_avformat () ;
 int gnutls_global_deinit () ;

void ff_gnutls_deinit(void)
{
    ff_lock_avformat();
    gnutls_global_deinit();
    ff_unlock_avformat();
}
