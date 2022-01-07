
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {int dummy; } ;
struct WriteThis {scalar_t__ counter; } ;
typedef int CURLcode ;
typedef int CURL ;


 scalar_t__ CURLAUTH_DIGEST ;
 scalar_t__ CURLE_OK ;
 int CURLOPT_HEADER ;
 int CURLOPT_HTTPAUTH ;
 int CURLOPT_HTTPHEADER ;
 int CURLOPT_NOPROGRESS ;
 int CURLOPT_POST ;
 int CURLOPT_PROGRESSFUNCTION ;
 int CURLOPT_READDATA ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_TRANSFERTEXT ;
 int CURLOPT_URL ;
 int CURLOPT_USERPWD ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 struct curl_slist* curl_slist_append (struct curl_slist*,char*) ;
 int curl_slist_free_all (struct curl_slist*) ;
 int fprintf (int ,char*) ;
 long progress_callback ;
 long read_callback ;
 int stderr ;
 int test_setopt (int *,int ,...) ;

int test(char *URL)
{
  CURL *curl;
  CURLcode res = CURLE_OK;
  struct curl_slist *slist = ((void*)0);
  struct WriteThis pooh;
  pooh.counter = 0;

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

  slist = curl_slist_append(slist, "Transfer-Encoding: chunked");
  if(slist == ((void*)0)) {
    fprintf(stderr, "curl_slist_append() failed\n");
    curl_easy_cleanup(curl);
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }


  test_setopt(curl, CURLOPT_URL, URL);


  test_setopt(curl, CURLOPT_POST, 1L);







  test_setopt(curl, CURLOPT_READFUNCTION, read_callback);


  test_setopt(curl, CURLOPT_READDATA, &pooh);


  test_setopt(curl, CURLOPT_VERBOSE, 1L);


  test_setopt(curl, CURLOPT_HEADER, 1L);


  test_setopt(curl, CURLOPT_HTTPHEADER, slist);

  test_setopt(curl, CURLOPT_HTTPAUTH, (long)CURLAUTH_DIGEST);
  test_setopt(curl, CURLOPT_USERPWD, "foo:bar");


  test_setopt(curl, CURLOPT_NOPROGRESS, 0L);
  test_setopt(curl, CURLOPT_PROGRESSFUNCTION, progress_callback);


  res = curl_easy_perform(curl);

test_cleanup:


  if(slist)
    curl_slist_free_all(slist);


  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return res;
}
