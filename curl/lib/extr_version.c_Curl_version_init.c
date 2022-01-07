
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CURLVERSION_NOW ;
 int curl_version () ;
 int curl_version_info (int ) ;

void Curl_version_init(void)
{
  curl_version();
  curl_version_info(CURLVERSION_NOW);
}
