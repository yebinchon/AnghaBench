
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURL ;


 int CURL_GLOBAL_ALL ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int upload (int *,char*,char*,int ,int) ;

int main(void)
{
  CURL *curlhandle = ((void*)0);

  curl_global_init(CURL_GLOBAL_ALL);
  curlhandle = curl_easy_init();

  upload(curlhandle, "ftp://user:pass@example.com/path/file", "C:\\file",
         0, 3);

  curl_easy_cleanup(curlhandle);
  curl_global_cleanup();

  return 0;
}
