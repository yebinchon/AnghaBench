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
struct curl_slist {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  CURLM ;

/* Variables and functions */
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  HOST ; 
 int NUM_HANDLES ; 
 int /*<<< orphan*/  PROXYUSERPWD ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct curl_slist* FUNC4 (struct curl_slist*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct curl_slist*) ; 
 int /*<<< orphan*/ ** eh ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  stderr ; 
 int test_argc ; 

int FUNC12(char *URL)
{
  CURLM *cm = NULL;
  struct curl_slist *headers = NULL;
  char buffer[246]; /* naively fixed-size */
  int res = 0;
  int i;

  for(i = 0; i < NUM_HANDLES; i++)
    eh[i] = NULL;

  FUNC11();

  if(test_argc < 4)
    return 99;

  FUNC8(buffer, sizeof(buffer), "Host: %s", HOST);

  /* now add a custom Host: header */
  headers = FUNC4(headers, buffer);
  if(!headers) {
    FUNC6(stderr, "curl_slist_append() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  FUNC9(CURL_GLOBAL_ALL);
  if(res) {
    FUNC5(headers);
    return res;
  }

  FUNC10(cm);
  if(res) {
    FUNC1();
    FUNC5(headers);
    return res;
  }

  res = FUNC7(0, cm, URL, PROXYUSERPWD, headers);
  if(res)
    goto test_cleanup;

  FUNC6(stderr, "lib540: now we do the request again\n");

  res = FUNC7(1, cm, URL, PROXYUSERPWD, headers);

test_cleanup:

  /* proper cleanup sequence - type PB */

  for(i = 0; i < NUM_HANDLES; i++) {
    FUNC3(cm, eh[i]);
    FUNC0(eh[i]);
  }

  FUNC2(cm);
  FUNC1();

  FUNC5(headers);

  return res;
}