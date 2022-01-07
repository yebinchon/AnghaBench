
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char curl_slist ;
struct Tdata {char* url; char* share; } ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 int CURLOPT_COOKIEFILE ;
 int CURLOPT_HTTPHEADER ;
 int CURLOPT_SHARE ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 int curl_slist_free_all (char*) ;
 int fprintf (int ,char*,...) ;
 int printf (char*) ;
 char* sethost (int *) ;
 int stderr ;

__attribute__((used)) static void *fire(void *ptr)
{
  CURLcode code;
  struct curl_slist *headers;
  struct Tdata *tdata = (struct Tdata*)ptr;
  CURL *curl;

  curl = curl_easy_init();
  if(!curl) {
    fprintf(stderr, "curl_easy_init() failed\n");
    return ((void*)0);
  }

  headers = sethost(((void*)0));
  curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);
  curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
  curl_easy_setopt(curl, CURLOPT_URL, tdata->url);
  curl_easy_setopt(curl, CURLOPT_COOKIEFILE, "");
  printf("CURLOPT_SHARE\n");
  curl_easy_setopt(curl, CURLOPT_SHARE, tdata->share);

  printf("PERFORM\n");
  code = curl_easy_perform(curl);
  if(code) {
    int i = 0;
    fprintf(stderr, "perform url '%s' repeat %d failed, curlcode %d\n",
            tdata->url, i, (int)code);
  }

  printf("CLEANUP\n");
  curl_easy_cleanup(curl);
  curl_slist_free_all(headers);

  return ((void*)0);
}
