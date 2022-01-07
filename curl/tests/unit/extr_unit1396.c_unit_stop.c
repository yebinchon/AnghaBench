
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curl_easy_cleanup (scalar_t__) ;
 int curl_global_cleanup () ;
 scalar_t__ hnd ;

__attribute__((used)) static void unit_stop(void)
{
  if(hnd)
    curl_easy_cleanup(hnd);
  curl_global_cleanup();
}
