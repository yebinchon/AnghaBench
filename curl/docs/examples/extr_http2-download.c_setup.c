
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transfer {long out; int * easy; } ;
typedef int CURL ;


 int CURLOPT_DEBUGDATA ;
 int CURLOPT_DEBUGFUNCTION ;
 int CURLOPT_HTTP_VERSION ;
 int CURLOPT_PIPEWAIT ;
 int CURLOPT_SSL_VERIFYHOST ;
 int CURLOPT_SSL_VERIFYPEER ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEDATA ;
 long CURL_HTTP_VERSION_2_0 ;
 int * curl_easy_init () ;
 int curl_easy_setopt (int *,int ,...) ;
 long fopen (char*,char*) ;
 long my_trace ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void setup(struct transfer *t, int num)
{
  char filename[128];
  CURL *hnd;

  hnd = t->easy = curl_easy_init();

  snprintf(filename, 128, "dl-%d", num);

  t->out = fopen(filename, "wb");


  curl_easy_setopt(hnd, CURLOPT_WRITEDATA, t->out);


  curl_easy_setopt(hnd, CURLOPT_URL, "https://localhost:8443/index.html");


  curl_easy_setopt(hnd, CURLOPT_VERBOSE, 1L);
  curl_easy_setopt(hnd, CURLOPT_DEBUGFUNCTION, my_trace);
  curl_easy_setopt(hnd, CURLOPT_DEBUGDATA, t);


  curl_easy_setopt(hnd, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_2_0);


  curl_easy_setopt(hnd, CURLOPT_SSL_VERIFYPEER, 0L);
  curl_easy_setopt(hnd, CURLOPT_SSL_VERIFYHOST, 0L);





}
