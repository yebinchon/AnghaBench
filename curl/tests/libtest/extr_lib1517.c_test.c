
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WriteThis {scalar_t__ sizeleft; int readptr; } ;
typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLOPT_HEADER ;
 int CURLOPT_POST ;
 int CURLOPT_POSTFIELDSIZE ;
 int CURLOPT_READDATA ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_TRANSFERTEXT ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 int data ;
 int fprintf (int ,char*) ;
 long read_callback ;
 int stderr ;
 scalar_t__ strlen (int ) ;
 int test_setopt (int *,int ,...) ;

int test(char *URL)
{
  CURL *curl;
  CURLcode res = CURLE_OK;

  struct WriteThis pooh;

  pooh.readptr = data;
  pooh.sizeleft = strlen(data);

  if(curl_global_init(CURL_GLOBAL_ALL)) {
    fprintf(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  curl = curl_easy_init();
  if(!curl) {
    fprintf(stderr, "curl_easy_init() failed\n");
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }


  test_setopt(curl, CURLOPT_URL, URL);


  test_setopt(curl, CURLOPT_POST, 1L);







  test_setopt(curl, CURLOPT_POSTFIELDSIZE, (long)pooh.sizeleft);


  test_setopt(curl, CURLOPT_READFUNCTION, read_callback);


  test_setopt(curl, CURLOPT_READDATA, &pooh);


  test_setopt(curl, CURLOPT_VERBOSE, 1L);


  test_setopt(curl, CURLOPT_HEADER, 1L);






  res = curl_easy_perform(curl);

test_cleanup:


  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return res;
}
