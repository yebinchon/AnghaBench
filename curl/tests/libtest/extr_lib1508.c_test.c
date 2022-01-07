
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLM ;


 int CURL_GLOBAL_ALL ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 int global_init (int ) ;
 int multi_init (int *) ;
 int printf (char*) ;

int test(char *URL)
{
  int res = 0;
  CURLM *m = ((void*)0);

  (void)URL;

  global_init(CURL_GLOBAL_ALL);

  multi_init(m);

test_cleanup:



  curl_multi_cleanup(m);
  curl_global_cleanup();

  printf("We are done\n");

  return res;
}
