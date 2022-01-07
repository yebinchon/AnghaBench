
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Curl_amiga_cleanup () ;
 int Curl_resolver_global_cleanup () ;
 int Curl_ssh_cleanup () ;
 int Curl_ssl_cleanup () ;
 int Curl_win32_cleanup (scalar_t__) ;
 scalar_t__ init_flags ;
 scalar_t__ initialized ;

void curl_global_cleanup(void)
{
  if(!initialized)
    return;

  if(--initialized)
    return;

  Curl_ssl_cleanup();
  Curl_resolver_global_cleanup();





  Curl_amiga_cleanup();

  Curl_ssh_cleanup();

  init_flags = 0;
}
