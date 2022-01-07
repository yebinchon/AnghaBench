
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLcode ;
typedef int CURL ;


 long CURLAUTH_NONE ;
 scalar_t__ CURLE_OK ;
 int CURL_GLOBAL_ALL ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 int fprintf (int ,char*) ;
 int libtest_arg2 ;
 int libtest_arg3 ;
 long parse_auth_name (int ) ;
 scalar_t__ send_right_password (int *,char*,int,long) ;
 scalar_t__ send_wrong_password (int *,char*,int,long) ;
 int stderr ;

int test(char *url)
{
  CURLcode res;
  CURL *curl = ((void*)0);

  long main_auth_scheme = parse_auth_name(libtest_arg2);
  long fallback_auth_scheme = parse_auth_name(libtest_arg3);

  if(main_auth_scheme == CURLAUTH_NONE ||
      fallback_auth_scheme == CURLAUTH_NONE) {
    fprintf(stderr, "auth schemes not found on commandline\n");
    return TEST_ERR_MAJOR_BAD;
  }

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

  res = send_wrong_password(curl, url, 100, main_auth_scheme);
  if(res != CURLE_OK)
    goto test_cleanup;

  res = send_right_password(curl, url, 200, fallback_auth_scheme);
  if(res != CURLE_OK)
    goto test_cleanup;

  curl_easy_cleanup(curl);


  curl = curl_easy_init();
  if(!curl) {
    fprintf(stderr, "curl_easy_init() failed\n");
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }

  res = send_wrong_password(curl, url, 300, main_auth_scheme);
  if(res != CURLE_OK)
    goto test_cleanup;

  res = send_wrong_password(curl, url, 400, fallback_auth_scheme);
  if(res != CURLE_OK)
    goto test_cleanup;

  res = send_right_password(curl, url, 500, fallback_auth_scheme);
  if(res != CURLE_OK)
    goto test_cleanup;

test_cleanup:

  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return (int)res;
}
