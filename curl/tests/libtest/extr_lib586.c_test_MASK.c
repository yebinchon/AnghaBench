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
struct userdata {char* text; scalar_t__ counter; } ;
struct Tdata {char* url; char* share; } ;
typedef  scalar_t__ CURLSHcode ;
typedef  char CURLSH ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_SHARE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 scalar_t__ CURLSHE_OK ; 
 int /*<<< orphan*/  CURLSHOPT_LOCKFUNC ; 
 int /*<<< orphan*/  CURLSHOPT_SHARE ; 
 int /*<<< orphan*/  CURLSHOPT_UNLOCKFUNC ; 
 int /*<<< orphan*/  CURLSHOPT_USERDATA ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 struct userdata* CURL_LOCK_DATA_SSL_SESSION ; 
 int TEST_ERR_MAJOR_BAD ; 
 int THREADS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 
 char* FUNC6 () ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ,struct userdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct Tdata*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 struct userdata* my_lock ; 
 struct userdata* my_unlock ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

int FUNC12(char *URL)
{
  int res;
  CURLSHcode scode = CURLSHE_OK;
  char *url;
  struct Tdata tdata;
  CURL *curl;
  CURLSH *share;
  int i;
  struct userdata user;

  user.text = "Pigs in space";
  user.counter = 0;

  FUNC10("GLOBAL_INIT\n");
  if(FUNC4(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC9(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  /* prepare share */
  FUNC10("SHARE_INIT\n");
  share = FUNC6();
  if(!share) {
    FUNC9(stderr, "curl_share_init() failed\n");
    FUNC3();
    return TEST_ERR_MAJOR_BAD;
  }

  if(CURLSHE_OK == scode) {
    FUNC10("CURLSHOPT_LOCKFUNC\n");
    scode = FUNC7(share, CURLSHOPT_LOCKFUNC, my_lock);
  }
  if(CURLSHE_OK == scode) {
    FUNC10("CURLSHOPT_UNLOCKFUNC\n");
    scode = FUNC7(share, CURLSHOPT_UNLOCKFUNC, my_unlock);
  }
  if(CURLSHE_OK == scode) {
    FUNC10("CURLSHOPT_USERDATA\n");
    scode = FUNC7(share, CURLSHOPT_USERDATA, &user);
  }
  if(CURLSHE_OK == scode) {
    FUNC10("CURL_LOCK_DATA_SSL_SESSION\n");
    scode = FUNC7(share, CURLSHOPT_SHARE,
                              CURL_LOCK_DATA_SSL_SESSION);
  }

  if(CURLSHE_OK != scode) {
    FUNC9(stderr, "curl_share_setopt() failed\n");
    FUNC5(share);
    FUNC3();
    return TEST_ERR_MAJOR_BAD;
  }


  res = 0;

  /* start treads */
  for(i = 1; i <= THREADS; i++) {

    /* set thread data */
    tdata.url   = URL;
    tdata.share = share;

    /* simulate thread, direct call of "thread" function */
    FUNC10("*** run %d\n",i);
    FUNC8(&tdata);
  }


  /* fetch a another one */
  FUNC10("*** run %d\n", i);
  curl = FUNC1();
  if(!curl) {
    FUNC9(stderr, "curl_easy_init() failed\n");
    FUNC5(share);
    FUNC3();
    return TEST_ERR_MAJOR_BAD;
  }

  url = URL;
  FUNC11(curl, CURLOPT_URL, url);
  FUNC10("CURLOPT_SHARE\n");
  FUNC11(curl, CURLOPT_SHARE, share);

  FUNC10("PERFORM\n");
  FUNC2(curl);

  /* try to free share, expect to fail because share is in use*/
  FUNC10("try SHARE_CLEANUP...\n");
  scode = FUNC5(share);
  if(scode == CURLSHE_OK) {
    FUNC9(stderr, "curl_share_cleanup succeed but error expected\n");
    share = NULL;
  }
  else {
    FUNC10("SHARE_CLEANUP failed, correct\n");
  }

test_cleanup:

  /* clean up last handle */
  FUNC10("CLEANUP\n");
  FUNC0(curl);

  /* free share */
  FUNC10("SHARE_CLEANUP\n");
  scode = FUNC5(share);
  if(scode != CURLSHE_OK)
    FUNC9(stderr, "curl_share_cleanup failed, code errno %d\n",
            (int)scode);

  FUNC10("GLOBAL_CLEANUP\n");
  FUNC3();

  return res;
}