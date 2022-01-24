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
typedef  char curl_slist ;
typedef  int /*<<< orphan*/  dnsentry ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_HEADER ; 
 int /*<<< orphan*/  CURLOPT_MAXCONNECTS ; 
 int /*<<< orphan*/  CURLOPT_RESOLVE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int NUM_URLS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* libtest_arg2 ; 
 char* libtest_arg3 ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  stderr ; 

int FUNC13(char *URL)
{
  int res = 0;
  CURL *curl = NULL;
  int i;
  char target_url[256];
  char dnsentry[256];
  struct curl_slist *slist = NULL, *slist2;
  char *port = libtest_arg3;
  char *address = libtest_arg2;

  (void)URL;

  /* Create fake DNS entries for serverX.example.com for all handles */
  for(i = 0; i < NUM_URLS; i++) {
    FUNC10(dnsentry, sizeof(dnsentry), "server%d.example.com:%s:%s", i + 1,
              port, address);
    FUNC11("%s\n", dnsentry);
    slist2 = FUNC4(slist, dnsentry);
    if(!slist2) {
      FUNC8(stderr, "curl_slist_append() failed\n");
      goto test_cleanup;
    }
    slist = slist2;
  }

  FUNC12();

  FUNC9(CURL_GLOBAL_ALL);

  /* get an easy handle */
  FUNC6(curl);

  /* go verbose */
  FUNC7(curl, CURLOPT_VERBOSE, 1L);
  /* include headers */
  FUNC7(curl, CURLOPT_HEADER, 1L);

  FUNC7(curl, CURLOPT_RESOLVE, slist);

  FUNC7(curl, CURLOPT_MAXCONNECTS, 3L);

  /* get NUM_HANDLES easy handles */
  for(i = 0; i < NUM_URLS; i++) {
    /* specify target */
    FUNC10(target_url, sizeof(target_url),
              "http://server%d.example.com:%s/path/1510%04i",
              i + 1, port, i + 1);
    target_url[sizeof(target_url) - 1] = '\0';
    FUNC7(curl, CURLOPT_URL, target_url);

    res = FUNC2(curl);

    FUNC0();
  }

test_cleanup:

  /* proper cleanup sequence - type PB */

  FUNC1(curl);

  FUNC5(slist);

  FUNC3();

  return res;
}