
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int target_url ;
typedef char curl_slist ;
typedef int dnsentry ;
typedef int CURL ;


 int CURLOPT_HEADER ;
 int CURLOPT_MAXCONNECTS ;
 int CURLOPT_RESOLVE ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int NUM_URLS ;
 int abort_on_test_timeout () ;
 int curl_easy_cleanup (int *) ;
 int curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 char* curl_slist_append (char*,char*) ;
 int curl_slist_free_all (char*) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int fprintf (int ,char*) ;
 int global_init (int ) ;
 char* libtest_arg2 ;
 char* libtest_arg3 ;
 int msnprintf (char*,int,char*,int,char*,...) ;
 int printf (char*,char*) ;
 int start_test_timing () ;
 int stderr ;

int test(char *URL)
{
  int res = 0;
  CURL *curl = ((void*)0);
  int i;
  char target_url[256];
  char dnsentry[256];
  struct curl_slist *slist = ((void*)0), *slist2;
  char *port = libtest_arg3;
  char *address = libtest_arg2;

  (void)URL;


  for(i = 0; i < NUM_URLS; i++) {
    msnprintf(dnsentry, sizeof(dnsentry), "server%d.example.com:%s:%s", i + 1,
              port, address);
    printf("%s\n", dnsentry);
    slist2 = curl_slist_append(slist, dnsentry);
    if(!slist2) {
      fprintf(stderr, "curl_slist_append() failed\n");
      goto test_cleanup;
    }
    slist = slist2;
  }

  start_test_timing();

  global_init(CURL_GLOBAL_ALL);


  easy_init(curl);


  easy_setopt(curl, CURLOPT_VERBOSE, 1L);

  easy_setopt(curl, CURLOPT_HEADER, 1L);

  easy_setopt(curl, CURLOPT_RESOLVE, slist);

  easy_setopt(curl, CURLOPT_MAXCONNECTS, 3L);


  for(i = 0; i < NUM_URLS; i++) {

    msnprintf(target_url, sizeof(target_url),
              "http://server%d.example.com:%s/path/1510%04i",
              i + 1, port, i + 1);
    target_url[sizeof(target_url) - 1] = '\0';
    easy_setopt(curl, CURLOPT_URL, target_url);

    res = curl_easy_perform(curl);

    abort_on_test_timeout();
  }

test_cleanup:



  curl_easy_cleanup(curl);

  curl_slist_free_all(slist);

  curl_global_cleanup();

  return res;
}
