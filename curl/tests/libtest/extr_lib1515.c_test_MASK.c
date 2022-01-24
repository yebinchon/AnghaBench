#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  target_url ;
typedef  int /*<<< orphan*/  dns_entry ;
typedef  int /*<<< orphan*/  CURLM ;

/* Variables and functions */
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 scalar_t__ DNS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* libtest_arg2 ; 
 char* libtest_arg3 ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(char *URL)
{
  CURLM *multi = NULL;
  int res = 0;
  char *address = libtest_arg2;
  char *port = libtest_arg3;
  char *path = URL;
  char dns_entry[256];
  int i;
  int count = 2;

  FUNC4(dns_entry, sizeof(dns_entry), "testserver.example.com:%s:%s",
            port, address);

  FUNC7();

  FUNC3(CURL_GLOBAL_ALL);
  FUNC5(multi);

  for(i = 1; i <= count; i++) {
    char target_url[256];
    FUNC4(target_url, sizeof(target_url),
              "http://testserver.example.com:%s/%s%04d", port, path, i);

    /* second request must succeed like the first one */
    res = FUNC2(multi, target_url, dns_entry);
    if(res)
      goto test_cleanup;

    if(i < count)
      FUNC6(DNS_TIMEOUT + 1);
  }

test_cleanup:

  FUNC1(multi);
  FUNC0();

  return (int) res;
}