
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char curl_slist ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_FAILED_INIT ;
 scalar_t__ CURLE_OK ;
 int CURLOPT_HTTPHEADER ;
 int CURLOPT_PUT ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_TRAILERDATA ;
 int CURLOPT_TRAILERFUNCTION ;
 int CURLOPT_URL ;
 int CURL_GLOBAL_ALL ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 char* curl_slist_append (char*,char*) ;
 int curl_slist_free_all (char*) ;
 int fprintf (int ,char*) ;
 char* read_callback ;
 int stderr ;
 int test_setopt (int *,int ,...) ;
 char* trailers_callback ;

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

  hhl = curl_slist_append(hhl, "Trailer: my-super-awesome-trailer,"
                               " my-other-awesome-trailer");
  if(!hhl) {
    goto test_cleanup;
  }

  test_setopt(curl, CURLOPT_URL, URL);
  test_setopt(curl, CURLOPT_HTTPHEADER, hhl);
  test_setopt(curl, CURLOPT_PUT, 1L);
  test_setopt(curl, CURLOPT_READFUNCTION, read_callback);
  test_setopt(curl, CURLOPT_TRAILERFUNCTION, trailers_callback);
  test_setopt(curl, CURLOPT_TRAILERDATA, ((void*)0));

  res = curl_easy_perform(curl);

test_cleanup:

  curl_easy_cleanup(curl);

  curl_slist_free_all(hhl);

  curl_global_cleanup();

  return (int)res;
}
