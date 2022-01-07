
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;
typedef int CURL ;


 int CURLINFO_PROTOCOL ;
 int CURLOPT_URL ;
 int CURL_GLOBAL_ALL ;
 int curl_easy_cleanup (int *) ;
 int curl_easy_getinfo (int *,int ,long*) ;
 int curl_easy_perform (int *) ;
 char* curl_easy_strerror (int) ;
 int curl_global_cleanup () ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,char*) ;
 int fprintf (int ,char*,int,char*) ;
 int global_init (int ) ;
 int printf (char*,long) ;
 int stderr ;

int test(char *URL)
{
  CURLcode res = 0;
  CURL *curl = ((void*)0);
  long protocol = 0;

  global_init(CURL_GLOBAL_ALL);
  easy_init(curl);

  easy_setopt(curl, CURLOPT_URL, URL);
  res = curl_easy_perform(curl);
  if(res) {
    fprintf(stderr, "curl_easy_perform() returned %d (%s)\n",
            res, curl_easy_strerror(res));
    goto test_cleanup;
  }

  res = curl_easy_getinfo(curl, CURLINFO_PROTOCOL, &protocol);
  if(res) {
    fprintf(stderr, "curl_easy_getinfo() returned %d (%s)\n",
            res, curl_easy_strerror(res));
    goto test_cleanup;
  }

  printf("Protocol: %x\n", protocol);

  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return 0;

test_cleanup:

  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return res;
}
