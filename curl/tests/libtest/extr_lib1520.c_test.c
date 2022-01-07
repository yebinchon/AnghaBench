
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upload_status {int member_0; } ;
struct curl_slist {int dummy; } ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_MAIL_FROM ;
 int CURLOPT_MAIL_RCPT ;
 int CURLOPT_READDATA ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 long FROM ;
 int TEST_ERR_MAJOR_BAD ;
 int TO ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 struct curl_slist* curl_slist_append (struct curl_slist*,int ) ;
 int curl_slist_free_all (struct curl_slist*) ;
 int fprintf (int ,char*) ;
 long read_callback ;
 int stderr ;
 int test_setopt (int *,int ,...) ;

int test(char *URL)
{
  CURLcode res;
  CURL *curl;
  struct curl_slist *rcpt_list = ((void*)0);
  struct upload_status upload_ctx = {0};

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

  rcpt_list = curl_slist_append(rcpt_list, TO);




  test_setopt(curl, CURLOPT_URL, URL);
  test_setopt(curl, CURLOPT_UPLOAD, 1L);
  test_setopt(curl, CURLOPT_READFUNCTION, read_callback);
  test_setopt(curl, CURLOPT_READDATA, &upload_ctx);
  test_setopt(curl, CURLOPT_MAIL_FROM, FROM);
  test_setopt(curl, CURLOPT_MAIL_RCPT, rcpt_list);
  test_setopt(curl, CURLOPT_VERBOSE, 1L);

  res = curl_easy_perform(curl);

test_cleanup:

  curl_slist_free_all(rcpt_list);
  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return (int)res;
}
