
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OPERATION_TIMEDOUT ;
 int CURLOPT_ERRORBUFFER ;
 int CURLOPT_NOPROGRESS ;
 int CURLOPT_URL ;
 int CURLOPT_WRITEFUNCTION ;
 int CURLOPT_XFERINFOFUNCTION ;
 int CURL_ERROR_SIZE ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_setopt (int *,int ,...) ;
 long dload_progress_cb ;
 int fprintf (int ,char*,int,char*) ;
 int printf (char*,int) ;
 int run (int *,int,int) ;
 int stderr ;
 int time (int *) ;
 long write_cb ;

int test(char *URL)
{
  CURLcode ret;
  CURL *hnd = curl_easy_init();
  char buffer[CURL_ERROR_SIZE];
  curl_easy_setopt(hnd, CURLOPT_URL, URL);
  curl_easy_setopt(hnd, CURLOPT_WRITEFUNCTION, write_cb);
  curl_easy_setopt(hnd, CURLOPT_ERRORBUFFER, buffer);
  curl_easy_setopt(hnd, CURLOPT_NOPROGRESS, 0L);
  curl_easy_setopt(hnd, CURLOPT_XFERINFOFUNCTION, dload_progress_cb);

  printf("Start: %d\n", time(((void*)0)));
  ret = run(hnd, 1, 2);
  if(ret)
    fprintf(stderr, "error %d: %s\n", ret, buffer);

  ret = run(hnd, 12000, 1);
  if(ret != CURLE_OPERATION_TIMEDOUT)
    fprintf(stderr, "error %d: %s\n", ret, buffer);
  else
    ret = 0;

  printf("End: %d\n", time(((void*)0)));
  curl_easy_cleanup(hnd);

  return (int)ret;
}
