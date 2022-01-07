
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLATFORM_TLS_T ;


 void* platform_tls_get (int ) ;

void *platform_tls_get_check(PLATFORM_TLS_T tls)
{
   return platform_tls_get(tls);
}
