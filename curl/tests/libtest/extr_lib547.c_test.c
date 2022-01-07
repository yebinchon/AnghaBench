
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLcode ;
typedef int CURL ;


 int CURLAUTH_BASIC ;
 int CURLAUTH_DIGEST ;
 int CURLAUTH_NTLM ;
 scalar_t__ CURLE_OK ;
 int CURLOPT_HEADER ;
 int CURLOPT_IOCTLDATA ;
 int CURLOPT_IOCTLFUNCTION ;
 int CURLOPT_POST ;
 int CURLOPT_POSTFIELDS ;
 int CURLOPT_POSTFIELDSIZE ;
 int CURLOPT_PROXY ;
 int CURLOPT_PROXYAUTH ;
 int CURLOPT_PROXYUSERPWD ;
 int CURLOPT_READDATA ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int TEST_ERR_MAJOR_BAD ;
 long UPLOADTHIS ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 int fprintf (int ,char*) ;
 long ioctlcallback ;
 long libtest_arg2 ;
 long libtest_arg3 ;
 long readcallback ;
 int stderr ;
 scalar_t__ strlen (long) ;
 int test_setopt (int *,int ,...) ;

int test(char *URL)
{
  CURLcode res;
  CURL *curl;

  int counter = 0;


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

  test_setopt(curl, CURLOPT_URL, URL);
  test_setopt(curl, CURLOPT_VERBOSE, 1L);
  test_setopt(curl, CURLOPT_HEADER, 1L);





  test_setopt(curl, CURLOPT_IOCTLFUNCTION, ioctlcallback);
  test_setopt(curl, CURLOPT_IOCTLDATA, &counter);
  test_setopt(curl, CURLOPT_READFUNCTION, readcallback);
  test_setopt(curl, CURLOPT_READDATA, &counter);


  test_setopt(curl, CURLOPT_POSTFIELDSIZE, (long)strlen(UPLOADTHIS));

  test_setopt(curl, CURLOPT_POST, 1L);
  test_setopt(curl, CURLOPT_PROXY, libtest_arg2);
  test_setopt(curl, CURLOPT_PROXYUSERPWD, libtest_arg3);
  test_setopt(curl, CURLOPT_PROXYAUTH,
                   (long) (CURLAUTH_NTLM | CURLAUTH_DIGEST | CURLAUTH_BASIC) );

  res = curl_easy_perform(curl);

test_cleanup:

  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return (int)res;
}
