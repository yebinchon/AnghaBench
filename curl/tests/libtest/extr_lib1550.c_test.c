
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLM ;


 int CURLE_OK ;
 int CURLMOPT_PIPELINING_SERVER_BL ;
 int CURLMOPT_PIPELINING_SITE_BL ;
 int CURL_GLOBAL_ALL ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 int * curl_multi_init () ;
 int curl_multi_setopt (int *,int ,char const* const*) ;
 int global_init (int ) ;

int test(char *URL)
{
  CURLM *handle;
  int res = CURLE_OK;
  static const char * const bl_servers[] =
     {"Microsoft-IIS/6.0", "nginx/0.8.54", ((void*)0)};
  static const char * const bl_sites[] =
     {"curl.haxx.se:443", "example.com:80", ((void*)0)};

  global_init(CURL_GLOBAL_ALL);
  handle = curl_multi_init();
  (void)URL;

  curl_multi_setopt(handle, CURLMOPT_PIPELINING_SERVER_BL, bl_servers);
  curl_multi_setopt(handle, CURLMOPT_PIPELINING_SITE_BL, bl_sites);
  curl_multi_cleanup(handle);
  curl_global_cleanup();
  return 0;
}
