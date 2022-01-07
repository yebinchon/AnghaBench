
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CURLE_OK ;
 int CURL_GLOBAL_ALL ;
 int FALSE ;
 int TEST_ERR_MAJOR_BAD ;
 int TRUE ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 int fprintf (int ,char*) ;
 int once (char*,int ) ;
 int stderr ;

int test(char *URL)
{
  int res;

  if(curl_global_init(CURL_GLOBAL_ALL) != CURLE_OK) {
    fprintf(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  res = once(URL, TRUE);
  if(!res)
    res = once(URL, FALSE);

  curl_global_cleanup();

  return res;
}
