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
typedef  char CURLSH ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_SHARE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLSHOPT_LOCKFUNC ; 
 int /*<<< orphan*/  CURLSHOPT_SHARE ; 
 int /*<<< orphan*/  CURLSHOPT_UNLOCKFUNC ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  CURL_LOCK_DATA_CONNECT ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_lock ; 
 int /*<<< orphan*/  my_unlock ; 
 int /*<<< orphan*/  stderr ; 

int FUNC11(char *URL)
{
  CURLcode res = CURLE_OK;
  CURLSH *share;
  int i;

  FUNC10(CURL_GLOBAL_ALL);

  share = FUNC7();
  if(!share) {
    FUNC9(stderr, "curl_share_init() failed\n");
    FUNC5();
    return TEST_ERR_MAJOR_BAD;
  }

  FUNC8(share, CURLSHOPT_SHARE, CURL_LOCK_DATA_CONNECT);
  FUNC8(share, CURLSHOPT_LOCKFUNC, my_lock);
  FUNC8(share, CURLSHOPT_UNLOCKFUNC, my_unlock);

  /* Loop the transfer and cleanup the handle properly every lap. This will
     still reuse connections since the pool is in the shared object! */

  for(i = 0; i < 3; i++) {
    CURL *curl = FUNC1();
    if(curl) {
      FUNC3(curl, CURLOPT_URL, URL);

      /* use the share object */
      FUNC3(curl, CURLOPT_SHARE, share);

      /* Perform the request, res will get the return code */
      res = FUNC2(curl);
      /* Check for errors */
      if(res != CURLE_OK)
        FUNC9(stderr, "curl_easy_perform() failed: %s\n",
                FUNC4(res));

      /* always cleanup */
      FUNC0(curl);
    }
  }

  FUNC6(share);
  FUNC5();

  return 0;
}