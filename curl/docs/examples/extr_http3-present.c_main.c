
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int features; } ;
typedef TYPE_1__ curl_version_info_data ;


 int CURLVERSION_NOW ;
 int CURL_GLOBAL_ALL ;
 int CURL_VERSION_ALTSVC ;
 int CURL_VERSION_HTTP2 ;
 int CURL_VERSION_HTTP3 ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 TYPE_1__* curl_version_info (int ) ;
 int printf (char*) ;

int main(void)
{
  curl_version_info_data *ver;

  curl_global_init(CURL_GLOBAL_ALL);

  ver = curl_version_info(CURLVERSION_NOW);
  if(ver->features & CURL_VERSION_HTTP2)
    printf("HTTP/2 support is present\n");

  if(ver->features & CURL_VERSION_HTTP3)
    printf("HTTP/3 support is present\n");

  if(ver->features & CURL_VERSION_ALTSVC)
    printf("Alt-svc support is present\n");

  curl_global_cleanup();
  return 0;
}
