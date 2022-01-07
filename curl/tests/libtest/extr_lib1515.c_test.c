
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int target_url ;
typedef int dns_entry ;
typedef int CURLM ;


 int CURL_GLOBAL_ALL ;
 scalar_t__ DNS_TIMEOUT ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 int do_one_request (int *,char*,char*) ;
 int global_init (int ) ;
 char* libtest_arg2 ;
 char* libtest_arg3 ;
 int msnprintf (char*,int,char*,char*,char*,...) ;
 int multi_init (int *) ;
 int sleep (scalar_t__) ;
 int start_test_timing () ;

int test(char *URL)
{
  CURLM *multi = ((void*)0);
  int res = 0;
  char *address = libtest_arg2;
  char *port = libtest_arg3;
  char *path = URL;
  char dns_entry[256];
  int i;
  int count = 2;

  msnprintf(dns_entry, sizeof(dns_entry), "testserver.example.com:%s:%s",
            port, address);

  start_test_timing();

  global_init(CURL_GLOBAL_ALL);
  multi_init(multi);

  for(i = 1; i <= count; i++) {
    char target_url[256];
    msnprintf(target_url, sizeof(target_url),
              "http://testserver.example.com:%s/%s%04d", port, path, i);


    res = do_one_request(multi, target_url, dns_entry);
    if(res)
      goto test_cleanup;

    if(i < count)
      sleep(DNS_TIMEOUT + 1);
  }

test_cleanup:

  curl_multi_cleanup(multi);
  curl_global_cleanup();

  return (int) res;
}
