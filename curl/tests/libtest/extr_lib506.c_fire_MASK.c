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
typedef  char curl_slist ;
struct Tdata {char* url; char* share; } ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_COOKIEFILE ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  CURLOPT_SHARE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void *FUNC8(void *ptr)
{
  CURLcode code;
  struct curl_slist *headers;
  struct Tdata *tdata = (struct Tdata*)ptr;
  CURL *curl;

  curl = FUNC1();
  if(!curl) {
    FUNC5(stderr, "curl_easy_init() failed\n");
    return NULL;
  }

  headers = FUNC7(NULL);
  FUNC3(curl, CURLOPT_VERBOSE,    1L);
  FUNC3(curl, CURLOPT_HTTPHEADER, headers);
  FUNC3(curl, CURLOPT_URL,        tdata->url);
  FUNC3(curl, CURLOPT_COOKIEFILE, "");
  FUNC6("CURLOPT_SHARE\n");
  FUNC3(curl, CURLOPT_SHARE, tdata->share);

  FUNC6("PERFORM\n");
  code = FUNC2(curl);
  if(code) {
    int i = 0;
    FUNC5(stderr, "perform url '%s' repeat %d failed, curlcode %d\n",
            tdata->url, i, (int)code);
  }

  FUNC6("CLEANUP\n");
  FUNC0(curl);
  FUNC4(headers);

  return NULL;
}