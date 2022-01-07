
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;
typedef scalar_t__ CURLUcode ;
typedef int CURLU ;
typedef int CURL ;


 int CURLOPT_POSTFIELDS ;
 int CURLOPT_URL ;
 int CURLUPART_SCHEME ;
 int CURLUPART_URL ;
 int CURLUPART_USER ;
 int CURLU_NON_SUPPORT_SCHEME ;
 int CURL_GLOBAL_ALL ;
 int EXCESSIVE ;
 int curl_easy_cleanup (int *) ;
 int curl_easy_setopt (int *,int ,char*) ;
 int curl_global_cleanup () ;
 int * curl_url () ;
 int curl_url_cleanup (int *) ;
 scalar_t__ curl_url_set (int *,int ,char*,int ) ;
 int easy_init (int *) ;
 int free (char*) ;
 int global_init (int ) ;
 char* malloc (int) ;
 int memset (char*,char,int) ;
 int printf (char*,int,int) ;

int test(char *URL)
{
  CURLcode res = 0;
  CURL *curl = ((void*)0);
  char *longurl = malloc(EXCESSIVE);
  CURLU *u;
  (void)URL;

  memset(longurl, 'a', EXCESSIVE);
  longurl[EXCESSIVE-1] = 0;

  global_init(CURL_GLOBAL_ALL);
  easy_init(curl);

  res = curl_easy_setopt(curl, CURLOPT_URL, longurl);
  printf("CURLOPT_URL %d bytes URL == %d\n",
         EXCESSIVE, (int)res);

  res = curl_easy_setopt(curl, CURLOPT_POSTFIELDS, longurl);
  printf("CURLOPT_POSTFIELDS %d bytes data == %d\n",
         EXCESSIVE, (int)res);

  u = curl_url();
  if(u) {
    CURLUcode uc = curl_url_set(u, CURLUPART_URL, longurl, 0);
    printf("CURLUPART_URL %d bytes URL == %d\n",
           EXCESSIVE, (int)uc);
    uc = curl_url_set(u, CURLUPART_SCHEME, longurl, CURLU_NON_SUPPORT_SCHEME);
    printf("CURLUPART_SCHEME %d bytes scheme == %d\n",
           EXCESSIVE, (int)uc);
    uc = curl_url_set(u, CURLUPART_USER, longurl, 0);
    printf("CURLUPART_USER %d bytes user == %d\n",
           EXCESSIVE, (int)uc);
    curl_url_cleanup(u);
  }

  free(longurl);

  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return 0;

test_cleanup:

  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return res;
}
