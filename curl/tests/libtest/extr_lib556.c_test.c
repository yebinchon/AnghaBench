
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_AGAIN ;
 scalar_t__ CURLE_OK ;
 int CURLOPT_CONNECT_ONLY ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int STDOUT_FILENO ;
 scalar_t__ TEST_ERR_FAILURE ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 scalar_t__ curl_easy_recv (int *,char*,int,size_t*) ;
 scalar_t__ curl_easy_send (int *,char const*,int ,size_t*) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 int fprintf (int ,char*) ;
 int sleep (int) ;
 int stderr ;
 int strlen (char const*) ;
 int test_setopt (int *,int ,...) ;
 int write (int ,char*,size_t) ;

int test(char *URL)
{
  CURLcode res;
  CURL *curl;

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
  test_setopt(curl, CURLOPT_CONNECT_ONLY, 1L);
  test_setopt(curl, CURLOPT_VERBOSE, 1L);

  res = curl_easy_perform(curl);

  if(!res) {

    const char *request =






      "GET /556 HTTP/1.2\r\n"
      "Host: ninja\r\n\r\n";

    size_t iolen = 0;

    res = curl_easy_send(curl, request, strlen(request), &iolen);

    if(!res) {


      do {
        char buf[1024];

        res = curl_easy_recv(curl, buf, sizeof(buf), &iolen);





        if(iolen) {

          if(!write(STDOUT_FILENO, buf, iolen))
            break;
        }

      } while((res == CURLE_OK && iolen != 0) || (res == CURLE_AGAIN));
    }

    if(iolen != 0)
      res = TEST_ERR_FAILURE;
  }

test_cleanup:

  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return (int)res;
}
