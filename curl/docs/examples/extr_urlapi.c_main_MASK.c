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
typedef  scalar_t__ CURLcode ;
typedef  int CURLUcode ;
typedef  int /*<<< orphan*/  CURLU ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_CURLU ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLUPART_URL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC9(void)
{
  CURL *curl;
  CURLcode res;

  CURLU *urlp;
  CURLUcode uc;

  /* get a curl handle */
  curl = FUNC1();

  /* init Curl URL */
  urlp = FUNC5();
  uc = FUNC7(urlp, CURLUPART_URL,
                    "http://example.com/path/index.html", 0);

  if(uc) {
    FUNC8(stderr, "curl_url_set() failed: %in", uc);
    goto cleanup;
  }

  if(curl) {
    /* set urlp to use as working URL */
    FUNC3(curl, CURLOPT_CURLU, urlp);
    FUNC3(curl, CURLOPT_VERBOSE, 1L);

    res = FUNC2(curl);
    /* Check for errors */
    if(res != CURLE_OK)
      FUNC8(stderr, "curl_easy_perform() failed: %s\n",
              FUNC4(res));

    goto cleanup;
  }

  cleanup:
  FUNC6(urlp);
  FUNC0(curl);
  return 0;
}