
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int CURL ;


 int CURLOPT_DEBUGFUNCTION ;
 int CURLOPT_HTTP_VERSION ;
 int CURLOPT_PIPEWAIT ;
 int CURLOPT_SSL_VERIFYHOST ;
 int CURLOPT_SSL_VERIFYPEER ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEDATA ;
 long CURL_HTTP_VERSION_2_0 ;
 int OUTPUTFILE ;
 int curl_easy_setopt (int *,int ,...) ;
 int * fopen (int ,char*) ;
 long my_trace ;

__attribute__((used)) static int setup(CURL *hnd)
{
  FILE *out = fopen(OUTPUTFILE, "wb");
  if(!out)

    return 1;


  curl_easy_setopt(hnd, CURLOPT_WRITEDATA, out);


  curl_easy_setopt(hnd, CURLOPT_URL, "https://localhost:8443/index.html");


  curl_easy_setopt(hnd, CURLOPT_VERBOSE, 1L);
  curl_easy_setopt(hnd, CURLOPT_DEBUGFUNCTION, my_trace);


  curl_easy_setopt(hnd, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_2_0);


  curl_easy_setopt(hnd, CURLOPT_SSL_VERIFYPEER, 0L);
  curl_easy_setopt(hnd, CURLOPT_SSL_VERIFYHOST, 0L);





  return 0;
}
