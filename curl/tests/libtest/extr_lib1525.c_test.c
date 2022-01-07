
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {int dummy; } ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_FAILED_INIT ;
 scalar_t__ CURLE_OK ;
 long CURLHEADER_UNIFIED ;
 int CURLOPT_HEADER ;
 int CURLOPT_HEADEROPT ;
 int CURLOPT_HTTPHEADER ;
 int CURLOPT_HTTPPROXYTUNNEL ;
 int CURLOPT_INFILESIZE ;
 int CURLOPT_POST ;
 int CURLOPT_PROXY ;
 int CURLOPT_PROXYHEADER ;
 int CURLOPT_PROXYTYPE ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEFUNCTION ;
 long CURLPROXY_HTTP ;
 int CURL_GLOBAL_ALL ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 struct curl_slist* curl_slist_append (struct curl_slist*,char*) ;
 int curl_slist_free_all (struct curl_slist*) ;
 int data ;
 int fprintf (int ,char*) ;
 long fwrite ;
 long libtest_arg2 ;
 long read_callback ;
 int stderr ;
 scalar_t__ strlen (int ) ;
 int test_setopt (int *,int ,...) ;

int test(char *URL)
{
  CURL *curl = ((void*)0);
  CURLcode res = CURLE_FAILED_INIT;

  struct curl_slist *hhl = ((void*)0);

  if(curl_global_init(CURL_GLOBAL_ALL) != CURLE_OK) {
    fprintf(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  curl = curl_easy_init();
  if(!curl) {
    fprintf(stderr, "curl_easy_init() failed\n");
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }

  hhl = curl_slist_append(hhl, "User-Agent: Http Agent");

  if(!hhl) {
    goto test_cleanup;
  }

  test_setopt(curl, CURLOPT_URL, URL);
  test_setopt(curl, CURLOPT_PROXY, libtest_arg2);
  test_setopt(curl, CURLOPT_HTTPHEADER, hhl);
  test_setopt(curl, CURLOPT_PROXYHEADER, hhl);
  test_setopt(curl, CURLOPT_HEADEROPT, CURLHEADER_UNIFIED);
  test_setopt(curl, CURLOPT_POST, 0L);
  test_setopt(curl, CURLOPT_UPLOAD, 1L);
  test_setopt(curl, CURLOPT_VERBOSE, 1L);
  test_setopt(curl, CURLOPT_PROXYTYPE, CURLPROXY_HTTP);
  test_setopt(curl, CURLOPT_HEADER, 1L);
  test_setopt(curl, CURLOPT_WRITEFUNCTION, fwrite);
  test_setopt(curl, CURLOPT_READFUNCTION, read_callback);
  test_setopt(curl, CURLOPT_HTTPPROXYTUNNEL, 1L);
  test_setopt(curl, CURLOPT_INFILESIZE, (long)strlen(data));

  res = curl_easy_perform(curl);

test_cleanup:

  curl_easy_cleanup(curl);

  curl_slist_free_all(hhl);

  curl_global_cleanup();

  return (int)res;
}
