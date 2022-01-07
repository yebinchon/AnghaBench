
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* buf; scalar_t__ size; } ;
typedef TYPE_1__ memory ;
typedef int CURL ;


 long CURLAUTH_ANY ;
 int CURLOPT_ACCEPT_ENCODING ;
 int CURLOPT_CONNECTTIMEOUT ;
 int CURLOPT_COOKIEFILE ;
 int CURLOPT_EXPECT_100_TIMEOUT_MS ;
 int CURLOPT_FILETIME ;
 int CURLOPT_FOLLOWLOCATION ;
 int CURLOPT_HTTPAUTH ;
 int CURLOPT_HTTP_VERSION ;
 int CURLOPT_MAXREDIRS ;
 int CURLOPT_PRIVATE ;
 int CURLOPT_PROXYAUTH ;
 int CURLOPT_TIMEOUT ;
 int CURLOPT_UNRESTRICTED_AUTH ;
 int CURLOPT_URL ;
 int CURLOPT_USERAGENT ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 long CURL_HTTP_VERSION_2TLS ;
 int * curl_easy_init () ;
 int curl_easy_setopt (int *,int ,...) ;
 long grow_buffer ;
 void* malloc (int) ;

CURL *make_handle(char *url)
{
  CURL *handle = curl_easy_init();


  curl_easy_setopt(handle, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_2TLS);
  curl_easy_setopt(handle, CURLOPT_URL, url);


  memory *mem = malloc(sizeof(memory));
  mem->size = 0;
  mem->buf = malloc(1);
  curl_easy_setopt(handle, CURLOPT_WRITEFUNCTION, grow_buffer);
  curl_easy_setopt(handle, CURLOPT_WRITEDATA, mem);
  curl_easy_setopt(handle, CURLOPT_PRIVATE, mem);


  curl_easy_setopt(handle, CURLOPT_ACCEPT_ENCODING, "");
  curl_easy_setopt(handle, CURLOPT_TIMEOUT, 5L);
  curl_easy_setopt(handle, CURLOPT_FOLLOWLOCATION, 1L);
  curl_easy_setopt(handle, CURLOPT_MAXREDIRS, 10L);
  curl_easy_setopt(handle, CURLOPT_CONNECTTIMEOUT, 2L);
  curl_easy_setopt(handle, CURLOPT_COOKIEFILE, "");
  curl_easy_setopt(handle, CURLOPT_FILETIME, 1L);
  curl_easy_setopt(handle, CURLOPT_USERAGENT, "mini crawler");
  curl_easy_setopt(handle, CURLOPT_HTTPAUTH, CURLAUTH_ANY);
  curl_easy_setopt(handle, CURLOPT_UNRESTRICTED_AUTH, 1L);
  curl_easy_setopt(handle, CURLOPT_PROXYAUTH, CURLAUTH_ANY);
  curl_easy_setopt(handle, CURLOPT_EXPECT_100_TIMEOUT_MS, 0L);
  return handle;
}
