
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURL ;


 int CURLOPT_HTTP_VERSION ;
 int CURLOPT_PIPEWAIT ;
 int CURLOPT_SSL_VERIFYHOST ;
 int CURLOPT_SSL_VERIFYPEER ;
 int CURLOPT_URL ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 long CURL_HTTP_VERSION_2_0 ;
 int curl_easy_setopt (int *,int ,...) ;
 int * files ;
 int init_memory (int *) ;
 long write_cb ;

__attribute__((used)) static void setup(CURL *hnd)
{

  curl_easy_setopt(hnd, CURLOPT_URL, "https://localhost:8443/index.html");


  curl_easy_setopt(hnd, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_2_0);


  curl_easy_setopt(hnd, CURLOPT_SSL_VERIFYPEER, 0L);
  curl_easy_setopt(hnd, CURLOPT_SSL_VERIFYHOST, 0L);


  curl_easy_setopt(hnd, CURLOPT_WRITEFUNCTION, write_cb);
  init_memory(&files[0]);
  curl_easy_setopt(hnd, CURLOPT_WRITEDATA, &files[0]);


  curl_easy_setopt(hnd, CURLOPT_PIPEWAIT, 1L);
}
